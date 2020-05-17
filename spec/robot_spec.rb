require './src/robot'
require './src/point'
require './src/direction'

describe 'Robot' do
    context 'when created' do
        it 'is in position 0.0 direction north and there can only be one in the world ' do
            point = Point.new
            cardinal_point = Direction.new
            eva = Robot.new

            position = eva.position
            direction = eva.direction

            expect(position).to eq point.position
            expect(direction).to eq cardinal_point.actually
        end
    end

    context 'knows how looking north to move' do
        it 'forward' do
            axis_x = 0
            axis_y = 1
            eva = Robot.new
            directions = ['f']

            eva.move(directions)
            position = eva.position

            expect(position).to eq [axis_x,axis_y]
        end 

        it 'backward' do
            axis_x = 0
            axis_y = -1
            eva = Robot.new
            directions = ['b']

            eva.move(directions)
            position = eva.position

            expect(position).to eq [axis_x,axis_y]
        end

        it 'left' do
            axis_x = -1
            axis_y = 0
            eva = Robot.new
            directions = ['l']

            eva.move(directions)
            position = eva.position

            expect(position).to eq [axis_x,axis_y]
        end

        it 'right' do
            axis_x = 1
            axis_y = 0
            eva = Robot.new
            directions = ['r']

            eva.move(directions)
            position = eva.position

            expect(position).to eq [axis_x,axis_y]
        end

        
        it 'various positions multiple stored positions' do
            axis_x = 0
            axis_y = -2
            eva = Robot.new
            directions = ['b','b']

            eva.move(directions)
            position = eva.position

            expect(position).to eq [axis_x,axis_y]
        end 
    end
end