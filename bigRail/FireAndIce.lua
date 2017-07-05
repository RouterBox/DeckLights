ws2812.init()
buffer = ws2812.newBuffer(400, 3)
buffer:fill(0,0,255)
for lights = 1, 400 do
    if(lights % 10 < 5)then
        buffer:set(lights, 0,255,0) --v
    end
end    
ws2812.write(buffer)

mytimer = tmr.create()
mytimer:register(125, tmr.ALARM_AUTO, function()
    print("FireAndIce")
   buffer:shift(1, ws2812.SHIFT_CIRCULAR)
   ws2812.write(buffer)
end) 
mytimer:start()
