WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720



function love.load()
    love.window.setMode(WINDOW_WIDTH, WINDOW_HEIGHT, {
        fullscreen = false,
        resizable = false,
        vsync = true
    })
end

function love.draw()
    love.graphics.clear(245/255, 40/255, 145/255, 255/255)
end