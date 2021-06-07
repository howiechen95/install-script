#!/usr/bin/env bash

NODE_VERSION="7.7.3"

# 先安装npm
curl -sL https://rpm.nodesource.com/setup_10.x | bash -
yum install -y nodejs

npm install -g cnpm --registry=https://registry.npm.taobao.org

# 安装node版本管理模块n
cnpm install n -g

# 删除yum 安装的版本
yum remove nodejs

# 版本降级/升级
n ${NODE_VERSION}

# 软链接
ln -s /usr/local/n/versions/node/${NODE_VERSION}/bin/node  /usr/bin/node
ln -s /usr/local/n/versions/node/${NODE_VERSION}/bin/npm  /usr/bin/npm