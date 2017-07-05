ws2812.init()
buffer = ws2812.newBuffer(300, 3)

twinkleDirections = {}    -- new array
for i=1, 300 do
  local thisLight = math.random(255)
  if thisLight >= 128 then
    twinkleDirections[i] = 1
  elseif thisLight < 128 then
    twinkleDirections[i] = 0  
  end
  if (i % 7 == 0) then
    buffer:set(i, thisLight, thisLight, thisLight)
  elseif (i % 7 ~= 0) then
    twinkleDirections[i] = 2 
    buffer:set(i, 0, 0, 0)   
  end   
end
ws2812.write(buffer)
mytimer = tmr.create()
mytimer:register(100, tmr.ALARM_AUTO, function()
    print("twinkleLoop")
   for i=1, 300 do
        if twinkleDirections[i] == 1 then
            local light = buffer:get(i);
            --print(light)
            light = light + 8;
            
            if(light >= 200) then
                light = 200;
                twinkleDirections[i] = 0;
            end
            buffer:set(i, light, light, light) 
        elseif twinkleDirections[i] == 0 then
            local light = buffer:get(i);
            light = light - 8;
            if(light <= 0) then
                light = 0;
                twinkleDirections[i] = 1;
            end
            buffer:set(i, light, light, light) 
        end
   end
   ws2812.write(buffer)
end) 
mytimer:start()
