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
    context 'knows what is the new point when is looking' do
        it 'north and move forward twice' do
            direction = Direction.new
            directions = ['f','f']
            cardinal_actually = direction.cardinal
            eye_x = 0
            eye_y = 2
            next_position = [eye_x,eye_y]
            
            direction.change(directions)
            position = direction.position

            expect(position).to eq next_position
        end
    end
end