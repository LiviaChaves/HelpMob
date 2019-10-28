local w = display.contentWidth
local h = display.contentHeight




local fundo1 = display.newImageRect("fundo1.png",540,960)
fundo1.x = display.contentCenterX
fundo1.y = display.contentCenterY

local plataforma1 = display.newImage("plataforma1.png")

 

local mob = display.newImage("mob.png")
mob.x = display.contentWidth / 4
mob.y = 245
mob.xScale = 1.2
mob.yScale = 1.2

local buttons = {}

buttons[1] = display.newImage("button.png")
buttons[1].x = 280
buttons[1].y = 420
buttons[1].myName = "up"
buttons[1].rotation = -90

buttons[2] = display.newImage("button.png")
buttons[2].x = 300
buttons[2].y = 500
buttons[2].myName = "down"
buttons[2].rotation = 90

buttons[3] = display.newImage("button.png")
buttons[3].x = 25
buttons[3].y = 500
buttons[3].myName = "left"
buttons[3].rotation = 180

buttons[4] = display.newImage("button.png")
buttons[4].x = 100
buttons[4].y = 480
buttons[4].myName = "right"

local yAxis = 0
local xAxis = 0

local touchFunction = function(e)
	local eventName = e.phase
	local direction = e.target.myName
	
	if eventName == "began" or eventName == "moved" then
		if direction == "up" then 
			yAxis = -5
			xAxis = 0
		elseif direction == "down" then 
			yAxis = 5
			xAxis = 0
		elseif direction == "right" then
			xAxis = 5
			yAxis = 0
		elseif direction == "left" then
			xAxis = -5
			yAxis = 0
		end
	else 
		yAxis = 0
		xAxis = 0
	end
end

local j=1

for j=1, #buttons do 
	buttons[j]:addEventListener("touch", touchFunction)
end

local update = function()
	mob.x = mob.x + xAxis
	mob.y = mob.y + yAxis

	if mob.x <= mob.width * .5 then 
		mob.x = mob.width * .5
	elseif mob.x >= w - mob.width * .5 then 
		mob.x = w - mob.width * .5
	end

	if mob.y <= mob.height * .5 then
		mob.y = mob.height * .5
	elseif mob.y >= h - mob.height * .5 then 
		mob.y = h - mob.height * .5
	end 
end

Runtime:addEventListener("enterFrame", update)
