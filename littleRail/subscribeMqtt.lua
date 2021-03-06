myMQTT:subscribe("wiimote/motion", 0, function(conn) print("subscribe success") end)
myMQTT:subscribe(thingNumber.."#", 0, function(conn) print("subscribe success") end)
ws2812.init()
mytimer = tmr.create()
buffer = ws2812.newBuffer(100, 3)
myMQTT:on("message", function(client, topic, data) 
    if not (topic == thingNumber.."bullet")then 
        mytimer:unregister()
    end
  if(topic == "wiimote/motion")then
    print(data)
    lightValues = cjson.decode(data)
    buffer = ws2812.newBuffer(100, 3)
    red = lightValues["red"]
    green = lightValues["green"]
    blue = lightValues["blue"]
    buffer:fill(green, red, blue)
    print("------------")
    ws2812.write(buffer)
  end
  if(topic == thingNumber.."lights")then
    print(data)
    lightValues = cjson.decode(data)
    buffer = ws2812.newBuffer(100, 3)
    red = lightValues["red"]
    green = lightValues["green"]
    blue = lightValues["blue"]
    buffer:fill(green, red, blue)
    print("------------")
    ws2812.write(buffer)
  end
  if(topic == thingNumber.."bullet")then
    print(data)
    lightValues = cjson.decode(data)

    red = lightValues["red"]
    green = lightValues["green"]
    blue = lightValues["blue"]
        
    buffer:set(1, green,red,blue)
    buffer:set(2, green,red,blue)
    buffer:set(3, green,red,blue)
  end
  if(topic == thingNumber.."turboRainbow")then
    dofile("TurboRainbow.lua")
  end
  if(topic == thingNumber.."whiteTrain")then
    dofile("whiteTrain.lua")
  end
  if(topic == thingNumber.."nyanCat")then
    dofile("doLights.lua")
  end
  if(topic == thingNumber.."tenRotate")then
    dofile("tenRotate.lua")
  end
  if(topic == thingNumber.."cheshireCat")then
    dofile("cheshireCat.lua")
  end
  if(topic == thingNumber.."fireVice")then
    dofile("Fire_V_ice.lua")
  end
  if(topic == thingNumber.."fireAndIce")then
    dofile("FireAndIce.lua")
  end
  if(topic == thingNumber.."sparkle")then
    dofile("sparkle.lua")
  end
  if(topic == thingNumber.."twinkleToes")then
    dofile("twinkleToes.lua")
  end
  if(topic == thingNumber.."sparkle")then
    dofile("sparkle.lua")
  end
  if(topic == thingNumber.."slideAway")then
    dofile("slideAway.lua")
  end  
  if(topic == thingNumber.."turnOffLights")then
    dofile("turnOffLights.lua")
  end  
end)
myMQTT:on("connect", function(client) print ("connected") end)
myMQTT:on("offline", function(client) print ("offline") end)
