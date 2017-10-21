mytimer:stop()

ws2812.init()
buffer = ws2812.newBuffer(400, 3)
buffer:fill(0,0,0)
ws2812.write(buffer)

switch = 0
fireflies = {}
glowVal = 5
numFireFlies = 20
glowStep = 20
redness = 0

for lights = 1, numFireFlies do
    fireflies[lights] = math.random(400)
end  

mytimer = tmr.create()
mytimer:register(115, tmr.ALARM_AUTO, function()
    redness = glowVal/1.5;
    if(switch == 0) then
        glowVal = glowVal + glowStep
        for lights = 1, numFireFlies do
            buffer:set(fireflies[lights], glowVal, redness, 0)
        end
        if(glowVal == 245) then  
            switch = 1
        end
    end
    if(switch == 1) then 
        glowVal = glowVal - glowStep
        for lights = 1, numFireFlies do
            buffer:set(fireflies[lights], glowVal, redness, 0)
        end  
        if(glowVal == 5) then
            for lights = 1, numFireFlies do
                fireflies[lights] = math.random(400)
            end 
            buffer:fill(0,0,0)
            switch = 0
        end
    end
    ws2812.write(buffer)
end) 
mytimer:start()
