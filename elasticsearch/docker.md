- [Docker下安装ElasticSearch和Kibana](https://segmentfault.com/a/1190000020140461)

docker 镜像
```
docker pull elasticsearch:7.2.0
```

启动
```
docker run --name elasticsearch -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" -d elasticsearch:7.2.0
```

测试
```
curl http://localhost:9200
```

修改配置
```
docker exec -it elasticsearch /bin/bash
cd /usr/share/elasticsearch/config/
vi elasticsearch.yml
```

在elasticsearch.yml的文件末尾加上:
```
http.cors.enabled: true
http.cors.allow-origin: "*"
```

重启，使配置生效
```
docker restart elasticsearch
```

安装ik分词器
```
cd /usr/share/elasticsearch/plugins/
elasticsearch-plugin install https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v7.2.0/elasticsearch-analysis-ik-7.2.0.zip
exit
docker restart elasticsearch 
```

在kibana界面的dev tools 验证
```
POST test/_analyze
{
  "analyzer": "ik_max_word",
  "text": "你好我是东邪Jiafly"
}
```

kibana安装
```
docker pull kibana:7.2.0
```

启动kibana
```
docker run --name kibana --link=elasticsearch:test  -p 5601:5601 -d kibana:7.2.0
docker start kibana
```
启动以后可以打开浏览器输入http://localhost:5601就可以打开kibana的界面了。



<hr><br>

# > [docker安装其他常用软件](https://www.cxyzjd.com/article/qq_35641192/81836818)

拉取镜像：
```
docker pull elasticsearch
```
未配置加速可以：
```
docker pull registry.docker-cn.com/library/elasticsearch
```

查看安装情况：
```
docker images
```

```
REPOSITORY	TAG	IMAGE ID	CREATED	VIRTUAL SIZE
elasticsearch	latest	f28f9f9d9ae3	4 days ago	485.8 MB
rabbitmq	3.6-management	3660cf2e0a4e	2 weeks ago	148.8 MB
```


部署与启动ES：注意ES启动需要2G内存，所以虚拟机测试用需要限制下内存
```
docker run -e ES_JAVA_OPTS="-Xms256m -Xmx256m" -d -p 9200:9200 -p 9300:9300 --name ES01 f28f9f9d9ae3
```

查看启动是否成功：
```
docker ps
```
或者访问：http://192.168.25.134:9200/

之后启动与停止：
```
docker start ES01
docker stop ES01
```
