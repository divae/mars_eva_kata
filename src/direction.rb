require './src/direction'

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
            @direction = Nord.new(@point)
        end
    end
end

class Nord 
    def initialize(point)
        @point = point
    end

    def forward
        @point.increase_y
        @point
    end

    def backward
        @point.decrease_y
        @point
    end

    def left
        @point.decrease_x
        @point
    end

    def right
        @point.increase_x
        @point
    end
end