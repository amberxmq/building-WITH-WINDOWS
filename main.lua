--by Mengqi Xu
thisThing = {}
numOfStars = 100
for i = 1, numOfStars do
	thisThing[i] = display.newCircle(0,0,2)
	thisThing[i]:setFillColor(255,255,255)
	thisThing[i].x=math.random(0,display.contentWidth)
	thisThing[i].y=math.random(0,display.contentHeight)
end
for j = 1, numOfStars do
		transition.blink(thisThing[j],{time=math.random(500,10000)})
	end


local screenWidth = display.contentWidth
local screenHeight = display.contentHeight

local screenCenterX = display.contentCenterX
local screenCenterY = display.contentCenterY

local bldgHeight = screenHeight * 0.725
local bldgWidth = bldgHeight * 0.425

local bldgCenterX = bldgWidth  * 0.5
local bldgCenterY = bldgHeight * 0.5

print( "Bldg: " .. bldgWidth .. " x " .. bldgHeight )
local paintCoolGrey = { 145/256, 150/256, 147/256 }
local paintWarmGrey = { 0.5, 0.4, 0.45, 0.5 }
local paintYellow = {255/255, 153/255, 18/255,0.5}

local function whereTheX( xRange, bldgModifier )
	
	local maxX = xRange - bldgModifier
	local xPosition = math.random(bldgModifier, maxX)
	return xPosition
end

local moon = display.newImage("moon.png", 80, 65) 

local myBuilding = display.newRect( 0, 0, bldgWidth, bldgHeight)
myBuilding.x = whereTheX( screenWidth, bldgCenterX )
myBuilding.y = screenHeight - bldgCenterY
myBuilding.fill = paintCoolGrey

local myBuildingShadow = display.newRect( 0, 0, bldgWidth * 0.325, bldgHeight)
myBuildingShadow.x = myBuilding.x + ( bldgWidth * 0.315 )
myBuildingShadow.y = myBuilding.y * 1.0125
myBuildingShadow.fill = paintWarmGrey

local function Window ()
		for i = 1,7 do
			for j = 1, 3 do
				myWindow = display.newRect(myBuilding.x+ ( bldgWidth * 0.3 )-j*0.23*bldgWidth, myBuilding.y-bldgHeight*0.5+i*0.13*bldgHeight,18,30)
				myWindow.fill = paintYellow
			end
		end
		
end

Window()
