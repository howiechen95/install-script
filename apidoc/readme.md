[apidoc 安装、生成文档和部署到远程服务器](https://blog.csdn.net/a704397849/article/details/100560342)

[使用 mkdocs 自动生成页面](https://blog.csdn.net/freewebsys/article/details/79218294)

[使用mkdocs 生成文档](https://www.wafunny.com/blog/tool/mkdocs.html)


```shell
mkdir linux.jiaozn.com

cd linux.jiaozn.com

docker pull squidfunk/mkdocs-material

docker run --rm -it -v ${PWD}:/docs squidfunk/mkdocs-material new .

docker run --rm -it -p 8000:8000 -v ${PWD}:/docs squidfunk/mkdocs-material &
```