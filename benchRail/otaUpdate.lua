urlToGet = "http://192.168.1.100"
http.get(urlToGet, nil, function(code, data)
    if (code < 0) then
      print("HTTP request failed")
    else
      print(code, data)
    end
end)