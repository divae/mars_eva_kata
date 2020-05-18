class Vector
    def initialize()
        @point = Point.new
        @cardinal = 'N'
        @coordenate = North.new(@point)
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
    def change(vectors)            
        vectors.each do |vector|
            case vector
            when 'N'
                @coordenate = North.new(@point)
            when 'S'
                @coordenate = South.new(@point)
            when 'E'
                @coordenate = East.new(@point)
            when 'W'
                @coordenate = West.new(@point)
            when 'f'
                @point = @coordenate.forward
            when 'b'
                @point = @coordenate.backward
            when 'l'
                @point = @coordenate.left
            when 'r'
                @point = @coordenate.right
            end
        end
    end
end