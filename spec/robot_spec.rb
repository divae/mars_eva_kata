require './src/robot'
require './src/point'
require './src/direction'

describe 'Robot' do
    context 'when created' do
        it 'is in position 0.0 direction north' do
            point = Point.new
            cardinal_point = Direction.new
            eva = Robot.new

            position = eva.position
            direction = eva.direction

            expect(position).to eq point.position
            expect(direction).to eq cardinal_point.actually
        end
    end

    context 'can move' do
        it 'can go forward in same direction' do
            eva = Robot.new
            directions = 'f'

            eva.move(directions)
            position = eva.position

            expect(position).to eq [1,0]
        end 
    end
end