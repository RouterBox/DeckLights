buffer = ws2812.newBuffer(300, 3)
buffer:fill(0,0,0)
for i=1, 30 do
    buffer:set(math.random(300), 255, 255, 255)
end
ws2812.write(buffer)

mytimer = tmr.create()
mytimer:register(80, tmr.ALARM_AUTO, function()
    print("sparkle")
    buffer:fill(0,0,0)
    for i=1, 30 do
        buffer:set(math.random(300), 255, 255, 255)
    end
   ws2812.write(buffer)
end) 
mytimer:start()
