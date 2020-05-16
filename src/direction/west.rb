class West
    def initialize(point)
        @point = point
    end

    def forward
        @point.decrease_x
        @point
    end
end