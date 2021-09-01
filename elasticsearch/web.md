[ElasticSearch head插件安装与配置](https://www.huaweicloud.com/articles/6a64491b1411e279fc505c278f2520a3.html)

```
git clone https://github.com/mobz/elasticsearch-head
```

1. 安装插件
```
cd  elasticsearch-head
npm install -g grunt-cli
npm install 
```
启动
```
grunt server
```

2. docker 安装
```
cd  elasticsearch-head
docker build -t mobz/elasticsearch-head:5-alpine -f Dockerfile-alpine .
```


在 ES 目录下 config/elasticsearch.yml  添加配置允许跨域访问
```
# 允许跨域访问
http.cors.enabled: true
http.cors.allow-origin: "*"
```