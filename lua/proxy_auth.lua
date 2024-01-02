-- check Proxy-Authorization header
if not ngx.var.http_proxy_authorization then
    ngx.header["Proxy-Authenticate"] = "Basic realm=\"Access to snat proxy\""
    -- 407: Proxy Authentication Required
    ngx.exit(407)
else
    -- transfer Proxy-Authorization to Authorization for auth basic module
    ngx.req.set_header("Authorization", ngx.var.http_proxy_authorization)
end
