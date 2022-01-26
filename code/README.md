# gods
基于go-zero的微服务框架，封装了常用功能，使用简单，致力于进行快速的业务研发。

## 使用

### 1. 数据库创建
~~~
地址：`127.0.0.1:3306`

用户：`root`

密码：`123456`

创建数据库 `gods`

创建数据表 `user`、`product`、`order`、`pay`
~~~

`SQL`语句在 `service/[user,product,order,pay]/model` 目录下


> 提示：如果你修改 gods 相关 mysql 配置，请使用你修改的端口号，账号，密码连接访问数据库。

### 2. 进入 `golang` 容器
~~~bash
$ docker exec -it gods-golang-1 bash
~~~

### 3. 使用 `up` 命令工具

- up install
安装项目依赖命令。

~~~bash
$ ./up install
~~~

- up start [rpc|api] [service_name]
服务启动命令，创建服务会话，并启动对应的服务。
    
~~~bash
$ ./up start rpc user
~~~

~~~bash
$ ./up start api user
~~~

- up stop [rpc|api] [service_name]
服务暂停命令，删除对应的服务会话。
    
~~~bash
$ ./up stop rpc user
~~~

~~~bash
$ ./up stop api user
~~~

- up info [rpc|api] [service_name]
服务查看命令，可以进入服务对应的会话终端，查看运行日志。

~~~bash
$ ./up info rpc user
~~~

~~~bash
$ ./up info api user
~~~

> 提示：使用 ctrl+a+d 组合快捷键，可以无损退出此会话，不会中止会话中运行的服务。

- up ls
服务会话列表，查看启动的服务会话列表。
    
~~~bash
$ ./up ls
~~~


## 感谢

- [go-zero](https://github.com/zeromicro/go-zero)
- [dtm](https://github.com/dtm-labs/dtm)