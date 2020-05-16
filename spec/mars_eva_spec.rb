describe 'Mars eva Word' do
    
    context 'when created' do
        it 'Mars Eva only has one robot' do
            type_robot = Robot
            game = Game.new

            maria = game.generate_robot
            eva = game.generate_robot

            expect(maria).to be eva
        end
    end

end

class Game
    @robot
    def generate_robot()
        @robot ||= robot
    end

    private 
    def robot
        Robot.new
    end
end

class Robot
end