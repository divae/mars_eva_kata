require './src/game'
require './src/robot'

describe 'Game Mars eva Word' do
    
    context 'when created' do
        it 'The world only has one robot' do
            type_robot = Robot
            game = Game.new

            maria = game.generate_robot
            eva = game.generate_robot

            expect(maria).to be eva
        end
    end

end