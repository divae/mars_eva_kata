class North
    def initialize(point)
        @point = point
    end

    def forward
        @point.increase_y
        @point
    end

    def backward
        @point.decrease_y
        @point
    end

    def left
        @point.decrease_x
        @point
    end

    def right
        @point.increase_x
        @point
    end
end