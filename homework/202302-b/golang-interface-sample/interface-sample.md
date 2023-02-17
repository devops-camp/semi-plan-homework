---
title: "Golang 接口(interface) 简介和入门使用"
subtitle: "Golang Interface Sample"
categories:
  - semi-plan 
tags:
  - semi-plan-202302-b
  - golang-interface-sample
date: "2023-02-17T22:34:14+08:00"
lastmod: "2023-02-17T22:34:14+08:00"
toc: true
draft: false
hiddenFromHomePage: false
pinTop: true

originAuthor: homework
originLink: ""
---



# Golang 接口(interface) 简介和入门使用

## 提示

上下文 `Context` 应该是 Go语言 中一个极其重要的 **基石** 概念了。

这里有一篇 [Go 语言设计与实现 - 接口 interface](https://draveness.me/golang/docs/part2-foundation/ch04-basic/golang-interface/) ， 是目前我学习的资料中 **完成度** 和 **友善度** 都很高的一篇文章。

在 `go v1.18` 中， `interface` 有了一个别名 `any`。 所以在说 interface 和 any 的时候， 其实说的是相同的东西。

`interface` 的使用场景到处都是。 还记得我们之前说的 `JSON` 和 `YAML` 的配置文件处理吗？ 

```go
// json.Marshal
func Marshal(v any) ([]byte, error) {
// ....
}
```

看完文章， 你至少应该知道

1. 什么是 **鸭式对象** ？
2. 怎么使用 **接口断言** ？

## 作业

人和大熊猫都是哺乳动物

1. 他们都会 **吃 (Eat)** 吃东西， 区别是 **人吃饭， 熊猫吃竹子**
2. 更大的不同是， 人会 **读书 (Read)**， 熊猫不会。

```go
func Eating(v any){
    v.Eat() // output: ???
}

func WhoAreYou(v any){
    // ???? 
}
```


