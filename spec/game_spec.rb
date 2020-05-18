require './lib/game'
require './lib/robot'

describe 'Game Mars eva Word' do
    
    context 'when created' do
        it 'The world only has one robot' do
            game = Game.new

            maria = game.generate_robot
            eva = game.generate_robot

            expect(maria).to be eva
        end
    end
    context 'Robots can move around the world' do
        it 'Eva walking' do
            game = Game.new
            vectors = ['f','f','S','f','f','E','f','W','b']
            axis_x = 2
            axis_y = 0
            next_position = [axis_x,axis_y]

            eva = game.generate_robot
            eva.move(vectors)
            position = eva.position

            expect(position).to eq [axis_x,axis_y]
        end
    end

end