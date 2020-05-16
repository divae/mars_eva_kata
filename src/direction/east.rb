class East
    def initialize(point)
        @point = point
    end

    def forward
        @point.increase_x
        @point
    end

    def backward
        @point.decrease_x
        @point
    end
end