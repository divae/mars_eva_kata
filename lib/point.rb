class Point
    def initialize
        @axis_x = 0
        @axis_y = 0
    end

    def position
        [@axis_x,@axis_y]
    end

    def increase_y
        @axis_y += 1
    end

    def decrease_y
        @axis_y -= 1
    end
    
    def increase_x
        @axis_x += 1
    end

    def decrease_x
        @axis_x -= 1
    end

end