class Robot
    def initialize
        @direction = Vector.new
    end
    
    def move(directions)
        @direction.change(directions)
    end

    def position
        @direction.position
    end

    def direction
        @direction.cardinal
    end
end