<div class="site-overview motion-element">
  <h3 class="site-overview-title">{{ config.overview_title or subtitle }}</h3>
  <p class="site-description">{{ description }}</p>
  {%- if theme.wechat_subscribe.enable %}
  <div class="site-wechat-qrcode" style="text-align: center; margin-top: 15px;">
    <p style="margin: 0; font-size: 13px; color: #999;">{{ '微信公众号' }}</p>
    <img src="{{ url_for(theme.wechat_subscribe.qrcode) }}" alt="微信公众号二维码" style="width: 120px; height: 120px; max-width: 100%;">
  </div>
  {%- endif %}
</div>

{%- if theme.site_state %}
<div class="site-state-wrap motion-element">
  <nav class="site-state">
    {%- if config.archive_dir != '/' and site.posts.length > 0 %}
      <div class="site-state-item site-state-posts">
        {%- if theme.menu.archives %}
          <a href="{{ url_for(theme.menu.archives.split('||')[0] | trim) }}">
        {% else %}
          <a href="{{ url_for(config.archive_dir) }}">
        {%- endif %}
          <span class="site-state-item-count">{{ site.posts.length }}</span>
          <span class="site-state-item-name">{{ __('state.posts') }}</span>
        </a>
      </div>
    {%- endif %}

    {%- if site.categories.length > 0 %}
      {%- set categoriesPageQuery = site.pages.find({type: 'categories'}, {lean: true}) %}
      {%- set hasCategoriesPage = categoriesPageQuery.length > 0 %}
      <div class="site-state-item site-state-categories">
        {%- if hasCategoriesPage %}
          {%- if theme.menu.categories %}
            <a href="{{ url_for(theme.menu.categories.split('||')[0] | trim) }}">
          {% else %}
            <a href="{{ url_for(config.category_dir) + '/' }}">
          {%- endif %}
        {%- endif %}
        <span class="site-state-item-count">{{ site.categories.length }}</span>
        <span class="site-state-item-name">{{ __('state.categories') }}</span>
        {%- if hasCategoriesPage %}</a>{%- endif %}
      </div>
    {%- endif %}

    {%- if site.tags.length > 0 %}
      {%- set tagsPageQuery = site.pages.find({type: 'tags'}, {lean: true}) %}
      {%- set hasTagsPage = tagsPageQuery.length > 0 %}
      <div class="site-state-item site-state-tags">
        {%- if hasTagsPage %}
          {%- if theme.menu.tags %}
            <a href="{{ url_for(theme.menu.tags.split('||')[0] | trim) }}">
          {% else %}
            <a href="{{ url_for(config.tag_dir) + '/' }}">
          {%- endif %}
        {%- endif %}
        <span class="site-state-item-count">{{ site.tags.length }}</span>
        <span class="site-state-item-name">{{ __('state.tags') }}</span>
        {%- if hasTagsPage %}</a>{%- endif %}
      </div>
    {%- endif %}
  </nav>
</div>
{%- endif %}

{%- if theme.chat.enable and theme.chat.service !== '' %}
  <div class="sidebar-button motion-element">
  {%- if theme.chat.service == 'chatra' and theme.chatra.enable %}
    <a onclick="Chatra('openChat', true);">
  {%- endif %}
  {%- if theme.chat.service == 'tidio' and theme.tidio.enable %}
    <a onclick="tidioChatApi.open();">
  {%- endif %}
  {%- if theme.chat.icon %}<i class="{{ theme.chat.icon }}"></i>{%- endif %}
    {{ theme.chat.text }}
  </a>
  </div>
{%- endif %}

{%- if theme.social %}
  <div class="links-of-author motion-element">
    {%- for name, link in theme.social %}
      <span class="links-of-author-item">
      {%- set sidebarURL = link.split('||')[0] | trim %}
      {%- if theme.social_icons.enable %}
        {%- set sidebarIcon = '<i class="' + link.split('||')[1] | trim + ' fa-fw"></i>' %}
      {%- else %}
        {%- set sidebarIcon = '' %}
      {%- endif %}
      {%- if theme.social_icons.enable and theme.social_icons.icons_only %}
        {%- set sidebarText = '' %}
      {%- else %}
        {%- set sidebarText = name %}
      {%- endif %}
        {{ next_url(sidebarURL, sidebarIcon + sidebarText, {title: name + ' → ' + sidebarURL}) }}
      </span>
    {%- endfor %}
  </div>
{%- endif %}

{%- if theme.creative_commons.license and theme.creative_commons.sidebar %}
  <div class="cc-license motion-element" itemprop="license">
  {%- set ccImage = '<img src="' + url_for(theme.images + '/cc-' + theme.creative_commons.license + '.svg') + '" alt="Creative Commons">' %}
    {{ next_url(ccURL, ccImage, {class: 'cc-opacity'}) }}
  </div>
{%- endif %}

{# Blogroll #}
{%- if theme.links %}
  <div class="links-of-blogroll motion-element">
    <div class="links-of-blogroll-title">
      {%- if theme.links_settings.icon %}<i class="{{ theme.links_settings.icon }} fa-fw"></i>{%- endif %}
      {{ theme.links_settings.title }}
    </div>
    <ul class="links-of-blogroll-list">
      {%- for blogrollText, blogrollURL in theme.links %}
        <li class="links-of-blogroll-item">
          {{ next_url(blogrollURL, blogrollText, {title: blogrollURL}) }}
        </li>
      {%- endfor %}
    </ul>
  </div>
{%- endif %}
