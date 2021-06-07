[Hexo 博客部署到腾讯云教程 - 云+社区 - 腾讯云](https://cloud.tencent.com/developer/article/1140005)


```
yum install -y curl-devel expat-devel gettext-devel openssl-devel zlib-devel
yum install -y gcc perl-ExtUtils-MakeMaker package
cd /usr/local/src
wget https://www.kernel.org/pub/software/scm/git/git-2.16.2.tar.gz
tar -zvxf git-2.16.2.tar.gz
cd git-2.16.2
make all prefix=/usr/local/git
make install prefix=/usr/local/git
echo 'export PATH=$PATH:/usr/local/git/bin' >> /etc/bashrc
source /etc/bashrc 
git --version
mkdir /home/git/
chown -R $USER:$USER /home/git/
chmod -R 755 /home/git/
cd /home/git/
git init --bare hexoBlog.git
```

```
vim /home/git/hexoBlog.git/hooks/post-receive

#!/bin/bash git --work-tree=/home/hexoBlog --git-dir=/home/git/hexoBlog.git checkout -f
```

```
chmod +x /home/git/hexoBlog.git/hooks/post-receive
```

```
yum install -y nginx
service nginx start
```

```
mkdir /home/hexoBlog/
chown -R $USER:$USER /home/hexoBlog/
chmod -R 755 /home/hexoBlog/
```

```
vim /etc/nginx/nginx.conf

将root值修改
# root         /usr/share/nginx/html;
root            /home/hexoBlog;
```

```
service nginx restart
```

