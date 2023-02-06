# semi-plan-20230115

半月刊 2023-01 下

作业重点：

1. 使用 croba 书写命令行工具， 分拆常用知识点。
2. 阅读 Docker 官网原文， 熟悉英文资料环境。

## 作业地址



## 提交作业说明

### 1. fork 文档

1. 访问作业 Github Repo: https://github.com/devops-camp/semi-plan-202301-2
2. 点击右上角 `fork`

### 2. 完成作业

1. 复制作业目录， 保存为自己的 github 名字

```bash
## 1. 进入目录
cd content/posts/

## 在 homework 同级目录创建 个人 目录， yourname 使用 Github 名称
mkdir -p <yourname>

## 3. 复制作业。 创建同名作业文件夹， 并复制作业
mkdir -p cobra01
cp -a homework/cobra01.md <yourname>/cobra01/
```

2. 修改作业 meta 信息

```bash
pinTop: true
originAuthor: homework
originLink: 
```

+ `pinTop`: 修改为 false。 发布作业置顶用。 
+ `originAuthor`: **名字** 可以是任意，作为显示用。
+ `originLink`: **原文链接** 你自己的博客地址， 或其它平台地址

```bash
pinTop: false
originAuthor: 名字
originLink: 原文链接
```


3. 使用 markdown 提交作业。 如果有截图， 使用相对路径。 

比如 `cobra01.md` 引入图片文件

```bash
$ tree .
.
├── cobra01
    ├── cobra01.md
    └── image.png
```

在 markdown 文件中语法

```
![image.png](./image.png)
```

4. 提交代码

如果你想同时提交代码， 也一并放到个人目录的对应作业目录下。

```bash
.
└── cobra01
    ├── Makefile
    ├── cobra01.md
    ├── go.mod
    ├── go.sum
    └── main.go
```

### 3. 提交作业

创建 `Pull Request`， 请求合并。 成功合并后， 会自动编译、并发布到本期半月刊中。


