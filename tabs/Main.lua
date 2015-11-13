-- LessonFour

-- Created by: Zacharias Octavious
-- Created on: Nov - 2015
-- Created for: ICS20
-- this program displays two sprites and both can move with the users finger 

-- global variables
local imagePosition = vec2()
local imagePosition2 = vec2()

local imageName = "SpaceCute:Beetle Ship"
local imageName2 = "SpaceCute:Beetle Ship"

local imageSize
local imageSize2

-- Use this function to perform your initial setup
function setup()
    
    displayMode(OVERLAY)
    noFill()
    noSmooth()
    noStroke()
    pushStyle()
    
    imagePosition = vec2(WIDTH/2, HEIGHT/2)    
    imageSize = vec2(spriteSize(imageName))
        
    imagePosition2 = vec2(WIDTH/2, HEIGHT/2+200)
    imageSize2 = vec2(spriteSize(imageName2))
end

-- This function gets called once every frame
function touched(touch)
    
    -- local variables
    local currentTouchPosition = vec2(touch.x, touch.y)
    local currentTouchPosition2 = vec2(touch.x, touch.y)
    
    if (touch.state == BEGAN) then
        
    end
    
    if (touch.state == MOVING) then
        if( (imagePosition.x - imageSize.x/2) < currentTouchPosition.x and
            (imagePosition.x + imageSize.x/2) > currentTouchPosition.x and
            (imagePosition.y - imageSize.y/2) < currentTouchPosition.y and
            (imagePosition.y + imageSize.y/2) > currentTouchPosition.y ) then

            imagePosition = currentTouchPosition
            print(imagePosition)
        end 
        
         if( (imagePosition2.x - imageSize2.x/2) < currentTouchPosition2.x and
            (imagePosition2.x + imageSize2.x/2) > currentTouchPosition2.x and
            (imagePosition2.y - imageSize2.y/2) < currentTouchPosition2.y and
            (imagePosition2.y + imageSize2.y/2) > currentTouchPosition2.y ) then

            imagePosition2 = currentTouchPosition2
            print(imagePosition2)
        end 
    end
    
    if (touch.state == ENDED) then
        
    end  
end

-- This function gets called once every frame
function draw()
    -- Do your drawing here
       
    sprite("SpaceCute:Background", 512, 384, 1024, 768)
    
    sprite(imageName, imagePosition.x, imagePosition.y) 
    sprite(imageName2, imagePosition2.x, imagePosition2.y)
end


