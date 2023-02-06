---
title: "作业: cobra - 03 交互式命令"
categories:
  - semi-plan 
tags:
  - semi-plan-202301-b 
  - cobra03
date: "2023-01-13T15:19:07+08:00"
lastmod: "2023-01-13T15:19:07+08:00"
toc: true
draft: false
hiddenFromHomePage: false

#  提交作业修改一下内容
pinTop: true
originAuthor: homework
originLink: ""
---


# 作业: cobra - 03 交互式命令

要求:

1. 使用 https://github.com/spf13/cobra 实现命令工具
2. 使用 https://github.com/go-survey/survey 实现交互式命令

3. 实现 Demo 效果

![demo](https://camo.githubusercontent.com/fd7c6e39ecf076e5da86a26ecfaa92d4e2ec3b56effe53bb804ed5cd7bb5f895/68747470733a2f2f7468756d62732e6766796361742e636f6d2f56696c6c61696e6f757347726163696f75734b6f75707265792d73697a655f726573747269637465642e676966)

除了官方效果之外， 我还发现了 `aliyun` 命令行工具在配置账户的时候使用的是 **交互式** ， 如下

![aliyun-cnofigure-profile](./aliyun-configure-profile.gif)

为了更好的体现 **实战性**， 我们将以 `aliyun configure --profile` 的作为例子， 并进行一些优化。


## 参考答案

独立完成以后或无法完成的时候， 可以参考答案

> https://tangx.in/posts/2023/01/26/devopscamp-cobra-interactive-survey/ 
