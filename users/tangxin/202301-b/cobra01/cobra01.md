---
title: "[提交案例] tangxin 的作业： cobra - 01 实现编译与参数绑定 n 种方式"
categories:
  - semi-plan 
tags:
  - semi-plan-202301-b 
  - cobra01
date: "2023-01-15T08:00:07+08:00"
lastmod: "2023-01-15T08:00:07+08:00"
toc: true
draft: false
hiddenFromHomePage: false

#  提交作业修改一下内容
pinTop: false
originAuthor: 我就是老麦呀
originLink: "https://www.example.com/post/cobra01/"
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


## 解题思路


### 1. 安装依赖包

```bash
$ go get -u github.com/spf13/cobra
```


### 2. 创建命令

```go
var root = &cobra.Command{
	Use:   "greeting",  // 命令名字
	Short: "打招呼", // 短介绍
	Run: func(cmd *cobra.Command, args []string) { // 运行函数
		greeting(name, age)
	},
}
```

### 3. 指定参数


1. 定义了变量作为参数接受者。
2. 使用 init 函数， 在程序初始化的时候， 传递参数值。
    1. 参数接受者 **指针类型**
    2. 参数名称， **字符串类型**
    3. 短参数名称， **字符串类型， 但只接受一个参数**
    4. 默认值， **具体类型**
    5. 参数描述， **字符串类型**

```go
var (
	name = ""
	age  = 0
)

func init() {
	root.Flags().StringVarP(&name, "name", "", "", "姓名")
	root.Flags().IntVarP(&age, "age", "", 20, "年龄")
}
```

### 4. 调用执行

1. greeting 是程序实际执行逻辑， 及执行逻辑入口。
2. 在 root 的 Run 中调用 执行逻辑入口。
3. 在 main 中调用 root 的执行函数 Execute()


```go
func greeting(name string, age int) {
	fmt.Printf("%s 你好， 今年 %d 岁\n", name, age)
}


var root = &cobra.Command{
	Use:   "greeting",
	Short: "打招呼",
	Run: func(cmd *cobra.Command, args []string) {
		greeting(name, age) // 2. root 命令调用 greeting 业务
	},
}

func main() {
	err := root.Execute() // 3. main 调用 root 命令
	if err != nil {
		log.Fatal(err)
	}
}
```


### 4. 使用 Makefile 进行编译管理

1. 使用 `GOOS` 和 `GOARCH` 设置环境变量命令。
2. 使用 `build` 命令， 使用进行 **当前系统环境** 的编译
    + 并且编译文件命名包含系统信息。
3. 使用 `buildx` 命令， 实现 **交叉编译**
4. 使用 `clean` 命令清空编译结果。

```Makefile
## 默认变量， 获取当前 go 的环境变量
GOOS ?= $(shell go env GOOS)
GOARCH ?= $(shell go env GOARCH)

## build 在指定环境变异
build:
	go build -o out/greeting-$(GOOS)-$(GOARCH) .

## 通过指定环境变量， 执行交叉编译
buildx:
	GOOS=linux GOARCH=amd64 make build
	GOOS=linux GOARCH=arm64 make build
	GOOS=darwin GOARCH=amd64 make build
	GOOS=darwin GOARCH=arm64 make build

## 清理编译结果
clean:
	rm -rf out/
```


## 关于图片的引用说明

### 外部引用

```markdown
![外部引用](https://tangx.in/mp/qrcode.png)
```

![外部引用](https://tangx.in/mp/qrcode.png)


### 相对路径

```markdown
![相对路径](./images/devopscamp-planet.png)
```

![相对路径](./images/devopscamp-planet.png)

