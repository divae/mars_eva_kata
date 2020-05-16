require './src/direction'
require './src/point'

describe 'Direction' do
    context 'when created' do
        it 'is looking north' do
            cardinal_point = 'N'
            direction = Direction.new

            direction_actually = direction.actually

            expect(direction_actually).to eq cardinal_point
        end
    end
    context 'when it moves' do
        it 'knows how to do it in all directions' do
            direction = Direction.new
            directions = ['f','f','S','f','f','E','f']
            cardinal_actually = direction.cardinal
            axis_x = 1
            axis_y = 0
            next_position = [axis_x,axis_y]
            
            direction.change(directions)
            position = direction.position

            expect(position).to eq next_position
        end
    end
end