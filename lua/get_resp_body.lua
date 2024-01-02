local chunk = string.sub(ngx.arg[1], 1, 1000)
ngx.ctx.buffered = (ngx.ctx.buffered or "") .. chunk
if ngx.arg[2] then
    local resp = ngx.ctx.buffered
    local resp_code = ""
    resp_code = string.match(resp,"\x22code\x22:\x22(.[^,]+)\x22") 
    ngx.var.resp_body_code = resp_code
end
