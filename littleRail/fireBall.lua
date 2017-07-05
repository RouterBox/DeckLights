ws2812.init()
buffer = ws2812.newBuffer(91, 3)
buffer:fill(5, 5, 5)


buffer:set(1, 255,255,255) --y
buffer:set(2, 255,255,200) --y
buffer:set(3, 255,255,150) --y
buffer:set(4, 255,255,100) --y
buffer:set(5, 255,255,50) --y
buffer:set(6, 255,255,0) --y

buffer:set(7, 255,204,0) --o
buffer:set(8, 250,204,0) --o
buffer:set(9, 200,204,0) --o
buffer:set(10, 150,204,0) --o
buffer:set(11, 100,204,0) --o
buffer:set(12, 51,204,0) --o

buffer:set(13, 0,255,0) --r
buffer:set(14, 0,200,0) --r
buffer:set(15, 0,150,0) --r
buffer:set(16, 0,100,0) --r
buffer:set(17, 0,50,0) --r
buffer:set(18, 0,25,0) --r
buffer:set(19, 0,0,0) --r

fireballCounter = 0
fireballDirection = 1;

mytimer = tmr.create()
mytimer:register(30, tmr.ALARM_AUTO, function()
   print("fireball")
   if(fireballDirection == 1)then
        fireballCounter = fireballCounter + 1
        buffer:shift(-1, ws2812.SHIFT_CIRCULAR)
        if(fireballCounter > 90 )then
            fireballDirection = 0
        end
   end
   if(fireballDirection == 0)then
        fireballCounter = fireballCounter - 1
        buffer:shift(1, ws2812.HIFT_CIRCULAR)
        if(fireballCounter < 19 )then
            fireballDirection = 1
        end
   end     
   ws2812.write(buffer)
end) 
mytimer:start()

function nextRound(roundCounter)
    if(roundCounter == 1) then
        buffer = ws2812.newBuffer(150, 3)
        buffer:fill(0,255,0)
        
        --GRB
        buffer:set(1, 0,51,51) --v
        buffer:set(2, 0, 51, 153) --i
        buffer:set(3, 0,0,255) --b
        buffer:set(4, 255,0,0) --g
        buffer:set(5, 255,255,0) --y
        buffer:set(6, 51,204,0) --o
        buffer:set(7, 0,255,0) --r
        
        
       ws2812.write(buffer)
    end
    if(roundCounter == 2) then
    
    end
    if(roundCounter == 3) then

    end
    if(roundCounter == 4) then
    
    end
    if(roundCounter == 5) then

    end
    if(roundCounter == 6) then

    end
    if(roundCounter == 7) then

    end
end
