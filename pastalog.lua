local http = require 'socket.http'
local ltn12 = require 'ltn12'
local json = require 'cjson'

-- Performs a HTTP POST
local function post(url, obj)
  local jsonStr = json.encode(obj)
  local source = ltn12.source.string(jsonStr)
  local response = {}
  local sink = ltn12.sink.table(response) -- Save response from server in chunks
  local ok, code, headers = http.request{
    url = url,
    method = "POST",
    headers = {
      ["Content-Type"] = "application/json",
      ["Content-Length"] = #jsonStr
    },
    source = source,
    sink = sink
  }

  return response
end

-- Sends log data to pastalog server
local function pastalog(modelName, seriesName, value, step, url)
  url = url or "http://localhost:8120/data"
  post(url, {modelName = modelName, pointType = seriesName, pointValue = value, globalStep = step})
end

return pastalog
