# HTTP/HTTPS代理

基于Nginx+Lua实现的外网代理，同时支持HTTP和HTTPS的正向代理请求，通过代理实现客户端的外网访问；

## 配置信息

- Nginx Conf的主配置文件：nginx.conf
- 用户鉴权使用`htpasswd`生成，存储在 users.conf 文件中
- 三方依赖：[ngx_http_proxy_connect_module](https://github.com/chobits/ngx_http_proxy_connect_module)
