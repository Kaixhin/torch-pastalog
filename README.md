# torch-pastalog

A Torch interface for [pastalog](https://github.com/rewonc/pastalog) - simple, realtime visualization of neural network training performance. Requires a running pastalog server.

## Installation

```sh
luarocks install https://raw.githubusercontent.com/Kaixhin/torch-pastalog/master/rocks/pastalog-0-0.rockspec
```

## Usage

See the [pastalog installation instructions](https://github.com/rewonc/pastalog#installation) for details on how to set up and start the pastalog Node.js server.

```lua
local pastalog = require 'pastalog'

--[[
      Machine learning code
--]]

-- API is pastalog(modelName, seriesName, value, step)
pastalog('model1', 'validLoss', 2.5, 1)
```
