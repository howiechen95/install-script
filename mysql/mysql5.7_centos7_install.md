```shell
# 下载命令
wget https://dev.mysql.com/get/mysql57-community-release-el7-11.noarch.rpm
# 下载后执行
sudo rpm -Uvh mysql57-community-release-el7-11.noarch.rpm
```

### 安装MySQL

```shell
sudo yum install -y mysql-community-server
```

### 启动并查看服务

```shell
# 启动mysql
sudo service mysqld start
# 查看mysql服务状态
sudo service mysqld status
```

> 如果是EL7（Red Hat Enterprise Linux (EL)）平台使用下面的命令

```shell
# 启动mysql
sudo systemctl start mysqld.service
# 查看mysql服务状态
sudo systemctl status mysqld.service
```

### root 设置密码

```sql
UPDATE user
SET Password = PASSWORD('123456')
WHERE user = 'root';
FLUSH
PRIVILEGES;
```

### 不允许远程登录root，创建新的用户，并授权该用户可远程连接

```sql
INSERT INTO `user` (`Host`, `User`, `Password`, `ssl_cipher`, `x509_issuer`, `x509_subject`)
VALUES ('%', 'howiechen', PASSWORD('123456'), '', '', '');
FLUSH
PRIVILEGES;
```

### 创建新数据库
```sql
drop
DATABASE if exists testdb;
CREATE
DATABASE testdb DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
flush
privileges;
```

### 授权用户可操作的数据库和权限
```sql
grant all privileges on testdb.* to howiechen identified by '123456';
flush
privileges;
```

授权时报错
```
ERROR 1805 (HY000): Column count of mysql.user is wrong. Expected 45, found 43. The table is probably corrupted
```

执行一下 mysql_upgrade

```
mysql_upgrade  -S /var/lib/mysql/mysql.sock -uroot -p
```

- [CentOS7安装最新版的MySQL（5.7）](https://www.huaweicloud.com/articles/0c192367ee485a4405c4b7f9ca4215cd.html)
- [MySQL5.7创建用户时报错](https://www.cnblogs.com/liufofu/p/7722254.html)