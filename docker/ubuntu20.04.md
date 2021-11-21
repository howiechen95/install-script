[ubuntu 安装docker](https://yeasy.gitbook.io/docker_practice/install/ubuntu)
[Ubuntu 20.04 Docker 安装并配置](https://www.cnblogs.com/yahuian/p/ubuntu-2004-docker.html)

```
sudo apt-get update

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
```

```
$ curl -fsSL https://mirrors.aliyun.com/docker-ce/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg


# 官方源
# $ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
```

```shell
$ echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://mirrors.aliyun.com/docker-ce/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null


# 官方源
# $ echo \
#   "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
#   $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```

```
$ sudo apt-get update

$ sudo apt-get install docker-ce docker-ce-cli containerd.io
```


# 配置国内源
```shell
vi /etc/docker/daemon.json
```

```shell
{
	"registry-mirrors": [
		"https://hub-mirror.c.163.com"
	]
}
```

```shell
sudo systemctl restart docker
```

```shell
docker info | grep -E "Registry|http"
```