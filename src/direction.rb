require './src/direction/north'
require './src/direction/south'
require './src/direction/east'

class Direction
    def initialize()
        @point = Point.new
        @cardinal_point = 'N'
        @direction = North.new(@point)
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
        directions.each do |direction|
            case direction
            when 'N'
                @direction = North.new(@point)
            when 'S'
                @direction = South.new(@point)
            when 'E'
                @direction = East.new(@point)
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
end