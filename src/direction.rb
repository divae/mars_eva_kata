require './src/direction'
require './src/north'

class Direction
    def initialize()
        @point = Point.new
        @cardinal_point = 'N'
    end
    def actually
        @cardinal_point
    end
    def position
        @point.position
    end
    def cardinal
        @cardinal_point
    end
    def change(directions)

        select_direction
            
        directions.each do |direction|
            case direction

            when 'f'
                @point = @direction.forward
            when 'b'
                @point = @direction.backward
            when 'l'
                @point = @direction.left
            when 'r'
                @point = @direction.right
            end
        end
    end

    def select_direction
        case @cardinal_point
        when 'N'
            @direction = North.new(@point)
        end
    end
end