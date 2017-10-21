mytimer:stop()

ws2812.init()
buffer = ws2812.newBuffer(400, 3)
buffer:fill(0, 0, 0)
ws2812.write(buffer)

for lights = 1, 400 do
    if(lights > 0 and lights < 62)then
        buffer:set(lights, 0,20,150) --p1
    end
    if(lights > 62 and lights < 210)then
        buffer:set(lights, 30, 125, 0) --o2
    end
    if(lights > 125 and lights < 210)then
        buffer:set(lights, 2,3,4) --b3
    end
    if(lights > 210 and lights < 300)then
    	 buffer:set(lights, 0,20,150) --p5
    end
    if(lights > 300 and lights < 339)then
       buffer:set(lights, 30, 125, 0) --o4
    end
    if(lights > 339 and lights < 378)then
        buffer:set(lights, 2, 3, 4) --o6
    end
    if(lights > 378)then
        buffer:set(lights, 0,20,150) --p7
    end
end   

ws2812.write(buffer)


mytimer = tmr.create()
mytimer:register(150, tmr.ALARM_AUTO, function()
	--buffer = ws2812.newBuffer(400, 3)
	--buffer:fill(0, 0, 0)
	--ws2812.write(buffer)

	for lights = 1, 400 do
	    if(lights > 0 and lights < 62)then
	        buffer:set(lights, 0,20,150) --p1
	    end
	    if(lights > 62 and lights < 210)then
	        buffer:set(lights, 30, 125, 0) --o2
	    end
	    if(lights > 125 and lights < 210)then
	        buffer:set(lights, 2,3,4) --b3
	    end
	    if(lights > 210 and lights < 300)then
	    	 buffer:set(lights, 0,20,150) --p5
	    end
	    if(lights > 300 and lights < 339)then
	       buffer:set(lights, 30, 125, 0) --o4
	    end
	    if(lights > 339 and lights < 378)then
	        buffer:set(lights, 2, 3, 4) --o6
	    end
	    if(lights > 378)then
	        buffer:set(lights, 0,20,150) --p7
	    end
	end
    print("sparkle")
    for i=1, 20 do
        buffer:set(math.random(400), 255, 0, 0)
    end
    for i=21, 40 do
        buffer:set(math.random(400), 255, 255, 255)
    end
   ws2812.write(buffer)
end) 
mytimer:start()

