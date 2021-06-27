# centos7

```
yum install -y golang
```

### 验证安装成功
```
go version
```

### 编辑环境变量
```
vi /etc/profile
```

### 创建自定义gopath
```
mkdir -p /opt/gopath/
```

### 在 /etc/profile 后面添加
```
# GOROOT
export GOROOT=/usr/lib/golang
# GOPATH
export GOPATH=/opt/gopath/
# GOPATH bin
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
```

### 配置立即生效
```
source /etc/profile
```

### 验证环境变量是否生效
```
echo $GOROOT
echo $GOPATH
go env
```
