---
title: "Golang Context 简介和入门使用"
subtitle: "Golang Context Sample"
categories:
  - semi-plan 
tags:
  - semi-plan-202302-b
  - golang-context-sample
date: "2023-02-17T22:34:14+08:00"
lastmod: "2023-02-17T22:34:14+08:00"
toc: true
draft: false
hiddenFromHomePage: false
pinTop: true

originAuthor: homework
originLink: ""
---



# Golang Context 简介和入门使用


## 提示

上下文 `Context` 应该是 Go语言 中一个极其重要的 **基石** 概念了。

这里有一篇 [Go 语言设计与实现 - 上下文 Context](https://draveness.me/golang/docs/part3-runtime/ch06-concurrency/golang-context/) ， 是目前我学习的资料中 **完成度** 和 **友善度** 都很高的一篇文章。


不管你愿不愿意， 用 Go 都绕不过 Context。不管用不用， 在所有 **公共方法或函数** 中强迫自己自己使用 context 作为入参。 **虽然有点武断，但是...（我也没有想到好的理由）** 

## 作业

就用 context 实现一个 **曹操打新野** 的传递游戏吧。

```go
main -> Lubei(ctx context.Context, n int)
     -> Guanyu(ctx context.Context)
     -> Zhangfei(ctx context.Context)
```

1. 给刘备传递 **任意数字** 
2. 刘备拿到数字， 并输出 “曹操来了 n 万人”
3. 刘备把数字传递给关羽。
  + a. 如果数字为偶数， 直接传递给张飞
  + b. 如果数字为奇数， 数字扩大10倍后传递给张飞。
  + c. 输出 “曹操来了 n 万人”。 （注意 n 的直）
4. 张飞拿到数字， 直接输入 “曹操来了 n 万人”。

