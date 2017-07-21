myMsg = "helloFromESP8266"
myTopic = "mark/button"
thingNumber = "littleRail/"
myMQTT = mqtt.Client("littleRail", 12000)
myMQTT:connect("192.168.1.100", 1883, 0, function(conn) 
    print("connected to mqtt")
    dofile("subscribeMqtt.lua")
    mqttLog("Connected to mqtt")
end) 

function mqttLog(msg)
    myMQTT:publish("log/"..thingNumber, msg, 0, 0, function(client) print("sent") end)
end
