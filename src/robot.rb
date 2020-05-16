class Robot
    def initialize
        @point = Point.new
        @direction = Direction.new
    end

    def move(directions)
        change_direction(directions)
    end
    def move_direction(directions)
        @directon.change(directions)
    end

    def position
        @point.position
    end

    def direction
        @direction.actually
    end

    private

    def change_direction(directions)
        directions.each do |direction|
            case direction
            when 'f'
                @point.forward
            when 'b'
                @point.backward
            when 'l'
                @point.left
            when 'r'
                @point.right
            end
        end
    end

end