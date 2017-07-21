ws2812.init()
buffer = ws2812.newBuffer(91, 3)
buffer:fill(64, 64, 64)

for lights = 1, 9 do 
    buffer:set(lights, 0,51,51) --v
end

for lights = 10, 18 do 
    buffer:set(lights, 0, 51, 153) --i
end

for lights = 19, 27 do 
    buffer:set(lights, 0,0,255) --b
end
for lights = 28, 36 do 
    buffer:set(lights, 255,0,0) --g
end
for lights = 37, 45 do 
    buffer:set(lights, 255,255,0) --y
end
for lights = 46, 54 do 
    buffer:set(lights, 51,204,0) --o
end
for lights = 55, 63 do 
    buffer:set(lights, 0,255,0) --r
end
for lights = 64, 72 do 
    buffer:set(lights, 255,0,255) --?
end
for lights = 73, 81 do 
    buffer:set(lights, 25,25,25) --r
end
for lights = 82, 91 do 
    buffer:set(lights, 255,255,255) --r
end

ws2812.write(buffer)
mytimer = tmr.create()
mytimer:register(80, tmr.ALARM_AUTO, function()
    print("tenRotate loop")
   buffer:shift(1, ws2812.SHIFT_CIRCULAR)
   ws2812.write(buffer)
end) 
mytimer:start()
