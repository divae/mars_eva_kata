require './src/direction'
require './src/point'

describe 'Direction' do
    context 'when created' do
        it 'is direction north' do
            cardinal_point = 'N'
            direction = Direction.new

            direction_actually = direction.actually

            expect(direction_actually).to eq cardinal_point
        end
    end
    context 'knows what is the new point when' do
        it 'is facing north and is moving forward' do
            directions = ['f','f']
            direction = Direction.new
            cardinal_actually = direction.cardinal
            point = Point.new
            eye_x = 0
            eye_y = 2
            next_position = [eye_x,eye_y]
            
            position = direction.change(directions)

            expect(position).to eq next_position
        end
    end
end