### 在centos7试了下，安装的是 mysql 5.6

安装前，我们可以检测系统是否自带安装 MySQL:

```shell
rpm -qa | grep mysql
```

如果你系统有安装，那可以选择进行卸载:

```shell
# 普通删除模式
rpm -e mysql
# 强力删除模式，如果使用上面命令删除时，提示有依赖的其它文件，则用该命令可以对其进行强力删除
rpm -e --nodeps mysql
```

下面是我自己卸载一次的过程
```shell
rpm -e --nodeps mysql-community-release
rpm -e --nodeps mysql-community-client
rpm -e --nodeps mysql-community-libs
rpm -e --nodeps mysql-community-server
rpm -e --nodeps mysql-community-common
```

安装 MySQL：

```
wget http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm
rpm -ivh mysql-community-release-el7-5.noarch.rpm
yum update
yum install -y mysql-server
```

权限设置：

```
chown mysql:mysql -R /var/lib/mysql
```

初始化 MySQL：

```
mysqld --initialize
```

启动 MySQL：

```shell
systemctl start mysqld
```

查看 MySQL 运行状态：

```shell
systemctl status mysqld
```

按以上命令安装无账号密码，使用mysql命令直接登录

```shell
mysql
```