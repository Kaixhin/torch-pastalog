package = "pastalog"
version = "scm-1"

source = {
  url = "git://github.com/Kaixhin/torch-pastalog.git",
  branch = "master"
}

description = {
  summary = "A Torch interface for pastalog",
  detailed = [[
                A Torch interface for pastalog - simple, realtime visualization of neural network training performance.
  ]],
  homepage = "https://github.com/Kaixhin/torch-pastalog",
  license = "MIT"
}

dependencies = {
  "torch >= 7.0",
  "luasocket",
  "lua-cjson"
}

build = {
  type = "builtin",
  modules = {
    pastalog = "pastalog.lua"
  }
}
