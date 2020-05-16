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

    context 'knows how to move ' do
        it 'forward in same direction' do
            eye_x = 0
            eye_y = 1
            eva = Robot.new
            directions = ['f']

            eva.move(directions)
            position = eva.position

            expect(position).to eq [eye_x,eye_y]
        end 

        it 'left in same direction' do
            eye_x = -1
            eye_y = 0
            eva = Robot.new
            directions = ['l']

            eva.move(directions)
            position = eva.position

            expect(position).to eq [eye_x,eye_y]
        end

        it 'backward in same direction' do
            eye_x = 0
            eye_y = -1
            eva = Robot.new
            directions = ['b']

            eva.move(directions)
            position = eva.position

            expect(position).to eq [eye_x,eye_y]
        end

        it 'various positions in in same direction' do
            eye_x = 0
            eye_y = -2
            eva = Robot.new
            directions = ['b','b']

            eva.move(directions)
            position = eva.position

            expect(position).to eq [eye_x,eye_y]
        end 
    end
end