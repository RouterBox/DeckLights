print("application.lua")
dofile("connectMqtt.lua")
--dofile("tenRotate.lua")

ws2812.init()
buffer = ws2812.newBuffer(100, 3)
buffer:fill(0, 128, 0)
ws2812.write(buffer)
