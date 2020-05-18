class Robot
    def initialize
        @direction = Direction.new
    end
    
    def move(directions)
        @direction.change(directions)
    end

    def position
        @direction.position
    end

    def direction
        @direction.actually
    end
end