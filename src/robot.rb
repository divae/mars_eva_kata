class Robot
    def initialize
        @point = [0,0]
        @direction = :north
    end

    def position?
        @point
    end

    def direction?
        @direction
    end
end