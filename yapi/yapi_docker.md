- [YMFE/yapi: YApi 是一个可本地部署的、打通前后端及QA的、可视化的接口管理平台](https://github.com/YMFE/yapi)
- [jinfeijie/yapi: 一键部署YApi](https://github.com/jinfeijie/yapi)


```
git clone https://github.com/jinfeijie/yapi.git
```

1.修改docker-compose.yml文件里面相关参数
```
cd yapi 
vim docker-compose.yml
```

2.创建network：
```
docker network create back-net
```

3.启动服务：
```
docker-compose up -d
```