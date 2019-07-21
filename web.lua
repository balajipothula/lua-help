local HTTP = require 'http'

HTTP.create_server("0.0.0.0", 8080, function (req, res)
  local body = "Hello world\n"
  res:write_head(200, {
    ["Content-Type"] = "text/plain",
    ["Content-Length"] = #body
  })
  res:finish(body)
end)
