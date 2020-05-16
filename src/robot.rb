class Robot
    def initialize
        @point = Point.new
        @direction = Direction.new
    end

    def move(directions)
        case directions
        when 'f'
            @point.forward
        when 'b'
            @point.backward
        end
    end

    def position
        @point.position
    end

    def direction
        @direction.actually
    end

end