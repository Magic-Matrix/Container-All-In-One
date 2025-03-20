
### 部署

```shell

touch .env/user.env

```

### 环境变量

`.env`路径下所有的文件为docker-compose.yml提供变量，但不会注入到容器中，因此可以在`.env`的文件中进行变量管理。

文件说明：
- `user.env`该文件不会被git追踪，因此需要自行创建，内容如下：
    ```shell
    USER_NAME=user
    USER_PASS=123456

    ADMIN_NAME=admin
    ADMIN_PASS=123456
    ```
- `port.env`管理所有对外开放的端口。
- `image.env`管理所有的镜像。

### 脚本

所有的脚本文件都有统一的运行格式：
```shell
./script.sh dir_name
```

示例：
```shell
./docker-compose-config.sh webdav
```

脚本介绍：
- `docker-compose-up.sh` 上线该应用。
- `docker-compose-down.sh` 下线该应用。
- `docker-compose-logs.sh` 打印该应用的log。
- `docker-compose-config.sh` 查看该应用的配置。


### 应用部署列表

- [x] webdav
- [x] memos
- [x] gitea
- [x] it_tools
- [ ] halo2
- [ ] jellyfin
- [ ] frp
- [ ] nginx