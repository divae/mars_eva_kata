class Robot
    def initialize
        @point = Point.new
        @direction = Direction.new
    end

    def position
        @point.position
    end

    def direction
        @direction.actually
    end
end



class Point
    def initialize
        @eye_x = 0
        @eye_y = 0
    end

    def position
        [@eye_x,@eye_y]
    end
end

class Direction
    def initialize
        @cardinal_point = 'N'
    end
    def actually
        @cardinal_point
    end
end