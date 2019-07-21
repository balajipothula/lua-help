records = { { remote_addr = "42.111.2.23", time_iso8601 = "2018-08-21T14:14:51+00:00", request = "GET / HTTP/1.1", status = "200", http_referrer = "-", http_user_agent = "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36" }, { remote_addr = "42.111.2.23", time_iso8601 = "2018-08-21T14:16:02+00:00", request = "GET / HTTP/1.1", status = "200", http_referrer = "https://bingo.balaji.network/", http_user_agent = "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36" } }

for _, record in pairs(records) do
  for _, value in pairs(record) do
    io.write(value .. '\t')
  end
  print()
end
