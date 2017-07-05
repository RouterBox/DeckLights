ws2812.init()
buffer = ws2812.newBuffer(400, 3)
buffer:fill(64, 64, 64)

for lights = 1, 40 do 
    buffer:set(lights, 0,51,51) --v
end

for lights = 41, 80 do 
    buffer:set(lights, 0, 51, 153) --i
end

for lights = 81, 120 do 
    buffer:set(lights, 0,0,255) --b
end
for lights = 121, 160 do 
    buffer:set(lights, 255,0,0) --g
end
for lights = 161, 200 do 
    buffer:set(lights, 255,255,0) --y
end
for lights = 201, 240 do 
    buffer:set(lights, 51,204,0) --o
end
for lights = 241, 280 do 
    buffer:set(lights, 0,255,0) --r
end
for lights = 281, 320 do 
    buffer:set(lights, 255,0,255) --?
end
for lights = 321, 360 do 
    buffer:set(lights, 25,25,25) --r
end
for lights = 361, 400 do 
    buffer:set(lights, 255,255,255) --r
end

ws2812.write(buffer) 
mytimer = tmr.create()
mytimer:register(80, tmr.ALARM_AUTO, function()
    print("tenRotateLoop")
   buffer:shift(1, ws2812.SHIFT_CIRCULAR)
   ws2812.write(buffer)
end) 
mytimer:start()

