buffer = ws2812.newBuffer(400, 3)
buffer:fill(0,0,0)
for i=1, 10 do
    buffer:set(math.random(400), math.random(255), math.random(255), math.random(255))
end
ws2812.write(buffer)
mytimer = tmr.create()
mytimer:register(math.random(250)+250, tmr.ALARM_AUTO, function()
    print("sparkle")
    buffer:fill(0,0,0)
    for i=1, 10 do
        buffer:set(math.random(400), math.random(255), math.random(255), math.random(255))
    end
    ws2812.write(buffer)
end) 
mytimer:start() 
