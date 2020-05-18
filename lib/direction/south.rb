class South
    def initialize(point)
        @point = point
    end

    def forward
        @point.decrease_y
        @point
    end

    def backward
        @point.increase_y
        @point
    end

    def left
        @point.increase_x
        @point
    end

    def right
        @point.decrease_x
        @point
    end
end