config = require("lapis.config")

config("development", function()
  nginx_path "/usr/local/bin/openresty"
end)
