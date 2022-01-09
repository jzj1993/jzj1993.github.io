---
title: 关于 & 留言
id: '32'
tags: []
categories:
  - - uncategorized
date: 2014-10-07 15:59:16
url:
---

## 关于本站

技术是一种精神，艺术是一种气质；Hacker Meets Painter；以画家之眼观世界，以黑客之手创未来。 本站取名为Paincker，取自Hacker和Painter两个词。技术和艺术是相通的。本站文章内容包括开发技术、兴趣爱好、学习与思考等。

> 画家和黑客的相似之处在于：他们都是创造者，就好像作曲家，建筑师，以及作家一样。黑客和画家类似，他们的目的是创造某种美好的事物。
> 
> ——《黑客与画家》

## 关于我

我是江子健，爱学习、爱思考、爱动手的90后理工男，也是一个头发茂密的程序员，想做文艺青年无奈天赋不足。个人兴趣爱好广泛，接触比较多的包括计算机、电子制作、摄影等。目前职业：正经的安卓工程师 + 业余全栈工程师 + 图虫签约摄影师。

### 个人经历

#### 2011.9 – 2015.7：西安电子科技大学，西安

通信工程学院 教改班，准确来说没有专业，通院课程都学……简单起见，自称通信工程专业。

#### 2015.7 ~ 2018.10：美团外卖C端，北京，Android高级工程师

参与美团外卖App、美团App外卖频道的研发。期间见证了外卖项目的高速发展，Android C端团队从4人扩展到40+，外卖日订单量超过2000w，公司规模逐步扩大并最终上市。个人在技术广度、深度上均有进步。

业务主力开发，负责过首页、商家容器、评价等核心模块，参与架构设计、基础组件建设、性能优化、开发工具等技术工作。WMRouter主要作者。发表多篇美团技术博客，提升了团队影响力。

> 发表的美团技术博客
> 
> *   [Android硬件加速原理与实现简介](https://tech.meituan.com/2017/01/19/hardware-accelerate.html)
> *   [WMRouter：美团外卖Android开源路由框架](https://tech.meituan.com/2018/08/23/meituan-waimai-android-open-source-routing-framework.html)
> *   [美团外卖Android Lint代码检查实践](https://tech.meituan.com/2018/04/13/waimai-android-lint.html)

#### 2018.10 ~ 2020.4：DAppChaser，上海，联合创始人 & 全栈开发

*   负责 [dappchaser.com](https://www.dappchaser.com) 网站、DApp数据统计、微信机器人等项目开发。

#### 2020.4 ~ 至今：微软，苏州，Software Engineer

### 部分作品展示

#### WMRouter（开源Android路由框架）

开源Android路由框架，基于组件化的设计思路，有功能灵活、使用简单的特点。

GitHub (1.6k star) ：[https://github.com/meituan/WMRouter](https://github.com/meituan/WMRouter)

[WMRouter：美团外卖Android开源路由框架](https://tech.meituan.com/2018/08/23/meituan-waimai-android-open-source-routing-framework.html)

成果：

*   满足外卖复杂的URI跳转需求（下发链接、A/B测试、跳转前异步操作、降级策略、成功率监控等）。
*   解决外卖架构设计中的四个关键问题：通信问题（跨业务库页面跳转）、复用问题（跨业务库代码复用）、依赖注入（多App复用时底层调用上层实现）、编译问题（业务库按需集成）。
*   实际应用到多个Android项目中，包括美团外卖C端、外卖B端、美团、美团收银等。

实现：AnnotationProcessor / Gradle / Transform / ASM / 组件化

#### Android Lint代码检查方案

缓解代码规范难以落实、增加团队学习压力的问题。

[美团外卖Android Lint代码检查实践](https://tech.meituan.com/2018/04/13/waimai-android-lint.html)

实现：

*   检查四类问题：Crash预防、Bug预防、性能和安全、代码规范（Android原生+自定义Lint规则）。
*   多阶段检查机制：Android Studio 实时检查（第一时间发现问题）、本地编译检查（高优问题强制检查）、CI检查（全量问题检查）、打包检查（确保可靠性）。
*   其他：支持配置文件、模板规则、按Git版本检查。

#### PublishMarkdown（开源桌面工具）

发布Markdown文件到WordPress等博客的开源、跨平台桌面工具，支持中英文。提供简易编辑预览功能，支持主流Markdown语法、代码高亮、MathJax；一键发布，批量传图，文章属性设置。

GitHub主页：[https://github.com/jzj1993/PublishMarkdown](https://github.com/jzj1993/PublishMarkdown)

实现：Electron / Vue.js / ES6 / Sass

#### ProjectMap（Android开发工具）

一键切换AAR和源码依赖，便于Android多工程开发。

实现：Gradle Plugin / [DependencyHandler](http://www.paincker.com/gradle-develop-basics#DependencyHandler) / [Groovy元编程](http://www.paincker.com/gradle-develop-basics#_MetaProgramming)

#### TimeTracer（Android性能分析工具）

Android方法耗时分析工具。

[http://www.paincker.com/time-tracer](http://www.paincker.com/time-tracer)

实现：Gradle / Javassist

#### Hertz SDK（Android性能监控SDK）

移动端性能监控SDK。参与页面测速模块设计与Android端实现。

[移动端性能监控方案Hertz](https://tech.meituan.com/2016/12/19/hertz.html)

#### 泡泡社团（Android项目）

校园社团App。负责Android开发。

[https://www.wandoujia.com/apps/7699444](https://www.wandoujia.com/apps/7699444)

#### It's the time（Android项目）

闹钟App，主要特点是界面新颖，支持语音操作。大学时期练手的作品，现在不知道还能不能用。。。

[http://www.anzhi.com/pkg/c62c\_com.jzj.alarm.html](http://www.anzhi.com/pkg/c62c_com.jzj.alarm.html)

GitHub（当年初学Android代码比较乱）： [https://github.com/jzj1993/It-s-the-time](https://github.com/jzj1993/It-s-the-time)

#### 个人博客（Web项目）

[http://www.paincker.com](http://www.paincker.com)

网站基于LNMP环境，WordPress主题自行开发。

实现：LNMP / WordPress / PHP / HTML5 / CSS3 / Sass / jQuery / Gulp

#### DAppChaser主站点（Web项目）

关注有价值的区块链创新。WordPress主题二次开发。

[http://www.dappchaser.com](http://www.dappchaser.com)

#### DApp数据站点（Web项目）

提供DApp基本信息查询，从以太坊等公链统计分析日活、交易量等数据。

[http://data.dappchaser.com](http://data.dappchaser.com)

实现：

*   前端：Vue.js / ES6 / Sass / Bootstrap / Webpack 3
*   后端 (v2)：Node.js / MongoDB / Koa / Web3.js / 以太坊全节点
*   后端 (v1)： Java、SpringBoot、Hibernate、MySQL、GoogleBigQuery

#### 极光日历（微信小程序）

微信小程序，已下线。

实现：微信小程序 / mpvue / Vue.js / Webpack 3

#### 量化交易学习

使用TuShare分析股票，绘制K线图，向量化回测。暂未开源。

关键字：量化交易 / Python / TuShare / NumPy / Matplotlib / PyQT

#### 乌镇区块链大会视频

2019乌镇世界区块链大会Cocos专场制作的视频。负责摄影和剪辑部分的工作。

[https://mp.weixin.qq.com/s/MM7Nm3pg\_SvUbAPsDQFWcA](https://mp.weixin.qq.com/s/MM7Nm3pg_SvUbAPsDQFWcA)

器材：Sony A6400，大疆如影SC；后期：Final Cut Pro X。

#### 图虫主页

摄影作品展示。

[https://tuchong.com/352310](https://tuchong.com/352310)

器材：佳能5D Mark IV、24-70mm F2.8、85mm F1.2 等；后期：Lightroom、Photoshop。

### 相关链接

GitHub：[https://github.com/jzj1993](https://github.com/jzj1993) CSDN博客：[http://blog.csdn.net/jzj1993](http://blog.csdn.net/jzj1993) 图虫主页：[https://tuchong.com/352310](https://tuchong.com/352310)

## 联系方式

学习交流、问题建议等，都可以加我微信 jzj2015（注明来自博客），也欢迎扫码关注个人微信公众号。 ![](http://www.paincker.com/wp-content/uploads/2018/02/qrcode_wx_258.jpg)