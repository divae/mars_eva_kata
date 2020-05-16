require './src/direction'

class Direction
    def initialize
        @cardinal_point = 'N'
    end
    def actually
        @cardinal_point
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
        @point
    end

    def select_direction
        case @cardinal_point
        when 'N'
            @direction = Nord.new(@point)
        end
    end
end

class Nord 
    def initialize(point)
        @point = Point.new
    end

    def forward
        @point.increase_y
        @point.position
    end

    def backward
        @point.decrease_y
        @point.position
    end

    def left
        @point.decrease_x
        @point.position
    end

    def right
        @point.increase_x
        @point.position
    end
end