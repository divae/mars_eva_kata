class Point
    def initialize
        @eye_x = 0
        @eye_y = 0
    end

    def left
        decrease_x
    end

    def right
        increase_x
    end

    def position
        [@eye_x,@eye_y]
    end

    def increase_y
        @eye_y += 1
    end

    def decrease_y
        @eye_y -= 1
    end
    
    def increase_x
        @eye_x += 1
    end

    def decrease_x
        @eye_x -= 1
    end

end