ws2812.init()
buffer = ws2812.newBuffer(300, 3)
buffer:fill(0,51,51)
ws2812.write(buffer)
colorCounter = 1

targetGreen = 0
targetRed = 0
targetBlue = 0

currentGreen = 0
currentRed = 0
currentBlue = 0

    
mytimer = tmr.create()
mytimer:register(50, tmr.ALARM_AUTO, function()
   print("fireVice loop")
    
    if(colorCounter == 1)then
        targetGreen = 0
        targetRed = 250
        targetBlue = 0

        if(currentGreen < targetGreen)then
            currentGreen =  currentGreen + 5
        end
        if(currentGreen > targetGreen)then
            currentGreen = currentGreen - 5
        end
        
        if(currentRed < targetRed)then
            currentRed =  currentRed + 5
        end
        if(currentRed > targetRed)then
            currentRed =  currentRed - 5
        end

        if(currentBlue < targetBlue)then
            currentBlue =  currentBlue + 5
        end
        if(currentBlue > targetBlue)then
            currentBlue =  currentBlue - 5
        end

        if(currentGreen == targetGreen)then
            if(currentRed == targetRed)then
                if(currentBlue == targetBlue)then
                    colorCounter = colorCounter + 1
                end
            end
        end
        buffer:fill(currentGreen, currentRed, currentBlue)
        
    end
    if(colorCounter == 2)then
        targetGreen = 0
        targetRed = 0
        targetBlue = 0

        if(currentGreen < targetGreen)then
            currentGreen =  currentGreen + 5
        end
        if(currentGreen > targetGreen)then
            currentGreen = currentGreen - 5
        end
        
        if(currentRed < targetRed)then
            currentRed =  currentRed + 5
        end
        if(currentRed > targetRed)then
            currentRed =  currentRed - 5
        end

        if(currentBlue < targetBlue)then
            currentBlue =  currentBlue + 5
        end
        if(currentBlue > targetBlue)then
            currentBlue =  currentBlue - 5
        end

        if(currentGreen == targetGreen)then
            if(currentRed == targetRed)then
                if(currentBlue == targetBlue)then
                    colorCounter = colorCounter + 1
                end
            end
        end
        buffer:fill(currentGreen, currentRed, currentBlue)
        
    end
    if(colorCounter == 3)then
        targetGreen = 0
        targetRed = 0
        targetBlue = 250
        if(currentGreen < targetGreen)then
            currentGreen =  currentGreen + 1
        end
        if(currentGreen > targetGreen)then
            currentGreen = currentGreen - 1
        end
        
        if(currentRed < targetRed)then
            currentRed =  currentRed + 5
        end
        if(currentRed > targetRed)then
            currentRed =  currentRed - 5
        end

        if(currentBlue < targetBlue)then
            currentBlue =  currentBlue + 5
        end
        if(currentBlue > targetBlue)then
            currentBlue =  currentBlue - 5
        end

        if(currentGreen == targetGreen)then
            if(currentRed == targetRed)then
                if(currentBlue == targetBlue)then
                    colorCounter = colorCounter + 1
                end
            end
        end
        buffer:fill(currentGreen, currentRed, currentBlue)
    end
    if(colorCounter == 4)then
        targetGreen = 0
        targetRed = 0
        targetBlue = 0

        if(currentGreen < targetGreen)then
            currentGreen =  currentGreen + 5
        end
        if(currentGreen > targetGreen)then
            currentGreen = currentGreen - 5
        end
        
        if(currentRed < targetRed)then
            currentRed =  currentRed + 5
        end
        if(currentRed > targetRed)then
            currentRed =  currentRed - 5
        end

        if(currentBlue < targetBlue)then
            currentBlue =  currentBlue + 5
        end
        if(currentBlue > targetBlue)then
            currentBlue =  currentBlue - 5
        end

        if(currentGreen == targetGreen)then
            if(currentRed == targetRed)then
                if(currentBlue == targetBlue)then
                    colorCounter = 1
                end
            end
        end
        buffer:fill(currentGreen, currentRed, currentBlue)
        
    end
    ws2812.write(buffer) 
end) 
mytimer:start()    
