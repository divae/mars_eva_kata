require './src/direction/north'
require './src/direction/south'
require './src/direction/east'
require './src/direction/west'

class Direction
    def initialize()
        @point = Point.new
        @cardinal = 'N'
        @direction = North.new(@point)
    end
    def actually
        @cardinal
    end
    def position
        @point.position
    end
    def cardinal
        @cardinal
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
            when 'W'
                @direction = West.new(@point)
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