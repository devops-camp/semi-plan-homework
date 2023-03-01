---
title: "作业: cobra - 02 读取配置配置文件"
categories:
  - semi-plan 
tags:
  - semi-plan-202301-b 
  - cobra02
date: "2023-01-12T15:19:07+08:00"
lastmod: "2023-01-13T15:19:07+08:00"
toc: true
draft: false
hiddenFromHomePage: false

#  提交作业修改一下内容
pinTop: true
originAuthor: homework
originLink: ""
---


# 作业: cobra - 02 读取配置配置文件

要求:

1. 使用 https://github.com/spf13/cobra 实现命令工具
2. 命令具有以下参数
    1. `--config` , `-c` 配置文件

**配置文件如下**

```yaml
# config.yml
name: zhangsan
age: 20
```

3. 将配置文件保存为 `JSON` 格式 

```bash
$ cat config.json
```

输出结果

```json
{
    "name":"zhangsan",
    "age": 20
}
```

## 参考答案

独立完成以后或无法完成的时候， 可以参考答案

> https://tangx.in/posts/2023/01/24/devopscamp-cobra-binding-config-file/


