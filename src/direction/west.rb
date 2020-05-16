class West
    def initialize(point)
        @point = point
    end

    def forward
        @point.decrease_x
        @point
    end

    def backward
        @point.increase_x
        @point
    end

    def left
        @point.increase_y
        @point
    end
end