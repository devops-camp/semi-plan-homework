---
title: "作业: cobra - 01 实现编译与参数绑定"
categories:
  - semi-plan 
tags:
  - semi-plan-202301-b 
  - cobra01
date: "2023-01-11T15:19:07+08:00"
lastmod: "2023-01-13T15:19:07+08:00"
toc: true
draft: false
hiddenFromHomePage: false

#  提交作业修改一下内容
pinTop: true
originAuthor: homework
originLink: ""
---


# 作业: cobra - 01 实现编译与参数绑定

要求:

1. 使用 https://github.com/spf13/cobra 实现命令工具
2. 命令具有以下参数
    1. `--name` 姓名
    2. `--age` 年龄
3. 如果年龄为空， 默认为 20 岁。
4. 完成交叉编译脚本， 编译其他平台的二进制文件

```
-rwxr-xr-x  1 franktang  staff  4220672 Jan 13 15:35 greeting-darwin-amd64
-rwxr-xr-x  1 franktang  staff  4203442 Jan 13 15:35 greeting-darwin-arm64
-rwxr-xr-x  1 franktang  staff  4215010 Jan 13 15:35 greeting-linux-amd64
-rwxr-xr-x  1 franktang  staff  4157892 Jan 13 15:35 greeting-linux-arm64
```

5. 执行输出效果如下

```bash
$ ./out/greeting-darwin-arm64
 你好, 今年 20 岁

$ ./out/greeting-darwin-arm64 --age 30 --name zhangsan
zhangsan 你好, 今年 30 岁
```

## 参考答案

独立完成以后或无法完成的时候， 可以参考答案

> https://tangx.in/posts/2023/01/23/devopscamp-cobra01/

