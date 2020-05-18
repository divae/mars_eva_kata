class Robot
    def initialize
        @vector = Vector.new
    end
    
    def move(vectors)
        @vector.change(vectors)
    end

    def position
        @vector.position
    end

    def direction
        @vector.direction
    end
end