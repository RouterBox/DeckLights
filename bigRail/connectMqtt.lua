myMsg = "helloFromESP8266"
myTopic = "mark/button"
thingNumber = "bigRail/"
myMQTT = mqtt.Client("bigRail", 12000)
myMQTT:connect("192.168.1.100", 1883, 0, function(conn) 
    print("connected to mqtt")
    dofile("subscribeMqtt.lua")
    --dofile("doLights.lua")
end) 
