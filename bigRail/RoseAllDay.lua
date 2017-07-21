ws2812.init()
buffer = ws2812.newBuffer(300, 3)
buffer:fill(0,64,64)
for lights = 1, 300 do
    if(lights % 300 < 100)then
        buffer:set(lights, 64,255,64) --v
    end
    if(lights % 300 > 200)then
        buffer:set(lights, 0,66,255) --v
    end
end    
ws2812.write(buffer)

mytimer = tmr.create()
mytimer:register(84, tmr.ALARM_AUTO, function()
    print("cheshireCateLoop")
   buffer:shift(1, ws2812.SHIFT_CIRCULAR)
   ws2812.write(buffer)
end) 
mytimer:start()
