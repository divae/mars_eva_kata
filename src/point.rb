class Point
    def initialize
        @eye_x = 0
        @eye_y = 0
    end

    def forward
        @eye_x += 1
    end

    def backward
        @eye_x -= 1
    end

    def position
        [@eye_x,@eye_y]
    end
end