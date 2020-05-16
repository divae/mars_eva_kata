class South
    def initialize(point)
        @point = point
    end

    def forward
        @point.decrease_y
        @point
    end
end