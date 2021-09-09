> [在CentOS 7安装ElasticSearch 7.x](https://cloud.tencent.com/developer/article/1625296)

### 1. 安装java

### 2.创建es用户

创建账号
```
adduser elasticsearch
```

密码
```
passwd elasticsearch
```

创建目录，es安装包目录、数据存储目录、日志目录
```
mkdir -p /opt/es
mkdir -p /data/es
mkdir -p /var/log/es

chown -R elasticsearch  /opt/es
chown -R elasticsearch  /data/es
chown -R elasticsearch  /var/log/es
```


### 3. 下载安装包    
[Download Elasticsearch](https://www.elastic.co/cn/downloads/elasticsearch)


```
cd /opt/es
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.14.1-linux-x86_64.tar.gz
```

解压
```
tar -zxvf elasticsearch-7.14.1-linux-x86_64.tar.gz
```

### 4. es 配置

配置jvm，内存
vi /opt/es/elasticsearch-7.14.1/config/jvm.options
```
-Xms512m
-Xmx512m
```

vi /opt/es/elasticsearch-7.14.1/config/elasticsearch.yml
```
node.name: es-node-1
# node.attr.rack: r1
path.data: /data/es
path.logs: /var/log/es
network.host: 0.0.0.0
discovery.seed_hosts: ["192.168.50.79"]
cluster.initial_master_nodes: ["192.168.50.79"]
```

```
# 允许跨域访问
http.cors.enabled: true
http.cors.allow-origin: "*"
```

linux 配置

需要保证端口可访问：9200、9300

vi /etc/security/limits.conf
```
*   soft noproc   65535  
*   hard noproc   65535  
*   soft nofile   65535  
*   hard nofile   65535
```


### 6. 启动
```
/opt/es/elasticsearch-7.14.1/bin/elasticsearch
```
   