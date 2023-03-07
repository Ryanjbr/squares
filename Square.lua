Square = Class{}

function Square:init(x, y, width, height)
    self.x = x
    self.y = y
    self.width = width
    self.height = height

    self.dy = 0
    self.dx = 0
end

function Square:update(dt)
    -- update position
    self.x = self.x + self.dx * dt
    self.y = self.y + self.dy * dt

    if self.x < 5 then
        self.dx = math.random(0, 50) * 10
    end
    if self.y < 5 then
        self.dy = math.random(0, 50) * 10
    end
    if self.x > WINDOW_WIDTH - self.width - 5 then
        self.dx = -math.random(0, 50) * 10
    end
    if self.y > WINDOW_HEIGHT - self.height - 5 then
        self.dy = -math.random(0, 50) * 10
    end
end

function Square:render()
    love.graphics.rectangle('line', self.x, self.y, self.width, self.height)
end

function Square:move()
    self.dy = math.random(-50, 50) * 10
    self.dx = math.random(-50, 50) * 10
end 

function Square:collides(square)
        -- first, check to see if the left edge of either is farther to the right
    -- than the right edge of the other
    if self.x > square.x + square.width or square.x > self.x + self.width then
        return false
    end

    -- then check to see if the bottom edge of either is higher than the top
    -- edge of the other
    if self.y > square.y + square.height or square.y > self.y + self.height then
        return false
    end 

    -- if the above aren't true, they're overlapping
    return true
end
