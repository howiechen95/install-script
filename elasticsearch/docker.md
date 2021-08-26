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


