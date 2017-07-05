buffer = ws2812.newBuffer(400, 3)
buffer:fill(0,0,0)
for i=1, 40 do
    buffer:set(math.random(400), 255, 255, 255)
end
ws2812.write(buffer)

mytimer = tmr.create()
mytimer:register(50, tmr.ALARM_AUTO, function()
    print("sparkle")
    buffer:fill(0,0,0)
    for i=1, 40 do
        buffer:set(math.random(400), 255, 255, 255)
    end
   ws2812.write(buffer)
end) 
mytimer:start()
