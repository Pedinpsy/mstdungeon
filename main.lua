math.randomseed(os.time())
math.random();math.random();math.random();
local Dungeon = require "dungeon"

function love.load()
	Dungeon:initialize()
end

local timer, timerMax = 0, 5
local title = "Organized Dungeon Generator / FPS: "
function love.update(dt)
	timer = timer + dt
	if timer > timerMax then
		timer = 0
		-- collectgarbage("collect")
		-- print(collectgarbage("count"))
		-- print(Dungeon.RoomPlacementAttempts)
	end

	love.window.setTitle(title .. tostring(love.timer.getFPS()) ..' '.. tostring(collectgarbage("count")))
end

function love.draw()
	Dungeon:draw()
end

function love.keypressed(key)
	local quit = love.event.quit
	if key == "escape" then
		quit()
	end
	if key == "r" then
		Dungeon:initialize()
	end
end

function love.mousepressed(x, y, button)

end