{%- if theme.wechat_subscribe.enable %}

<p>{{ theme.wechat_subscribe.description or '如果觉得文章对你有帮助，欢迎关注我的微信公众号：' }}</p>
<p style="text-align: center;">
<img src="{{ url_for(theme.wechat_subscribe.qrcode) }}" alt="微信公众号二维码">
</p>
<p style="text-align: center;">{{ theme.wechat_subscribe.name or '公众号名称' }}</p>

{%- endif %}
