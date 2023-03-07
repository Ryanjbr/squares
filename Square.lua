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
    self.x = self.x + self.dx * dt
    self.y = self.y + self.dy * dt
end

function Square:render()
    love.graphics.rectangle('line', self.x, self.y, self.width, self.height)
end

function Square:move()
    self.dy = math.random(-50, 50) * 5
    self.dx = math.random(-50, 50) * 5
end 

