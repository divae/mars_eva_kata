class Robot
    def initialize
        origin
    end

    def position
        @point.position
    end

    def direction
        @direction
    end
    
    def move(vectors)
        vectors.each do |vector|
            case vector
            when 'N'
                @coordinate = North.new(@point)
            when 'S'
                @coordinate = South.new(@point)
            when 'E'
                @coordinate = East.new(@point)
            when 'W'
                @coordinate = West.new(@point)
            when 'f'
                @point = @coordinate.forward
            when 'b'
                @point = @coordinate.backward
            when 'l'
                @point = @coordinate.left
            when 'r'
                @point = @coordinate.right
            else
                origin
            end
        end
    end

    private

    def origin
        @point = Point.new
        @direction = 'N'
        @coordinate = North.new(@point)
    end

end