WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

Class = require 'class'
require 'Square'

MOVE_SPEED = 100

function love.load()
    love.window.setMode(WINDOW_WIDTH, WINDOW_HEIGHT, {
        fullscreen = false,
        resizable = false,
        vsync = true
    })

    love.window.setTitle('Squares')

    math.randomseed(os.time())

    -- initialize square objects
    square1 = Square(100, WINDOW_HEIGHT / 2 - 37, 75, 75)
    square2 = Square(WINDOW_WIDTH - 175, WINDOW_HEIGHT / 2 - 37, 75, 75)
end

function love.draw()
    love.graphics.clear(245/255, 40/255, 145/255, 255/255)

    square1:render()
    square2:render()
end

function love.keypressed(key)
    if key == 'escape' then
        love.event.quit()
    elseif key == 'enter' or key == 'return' then
        square1:move()
        square2:move()
    end
end

function love.update(dt)
    square1:update(dt)
    square2:update(dt)
    if square1:collides(square2) then
        square1:move()
        square2:move()
    end
end