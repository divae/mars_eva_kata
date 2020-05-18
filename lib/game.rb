class Game
    @robot
    def generate_robot
        @robot ||= robot
    end

    private 
    def robot
        Robot.new
    end
end