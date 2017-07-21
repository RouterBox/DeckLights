mytimer:stop()

ws2812.init()
buffer = ws2812.newBuffer(92, 3)
buffer:fill(0, 0, 0)
ws2812.write(buffer)

buffer = ws2812.newBuffer(92, 3)
buffer:fill(0, 0, 255)
ws2812.write(buffer)