[安装](https://sjqzhang.github.io/go-fastdfs/install.html#docker)

```
 docker run --network=host --name fastdfs -v /data/fastdfs_data:/data -p 8080:8080 -e GO_FASTDFS_DIR=/data sjqzhang/go-fastdfs
```