require 'robot'
require 'vector'

describe 'Robot' do
    context 'when is created' do
        it 'is origin position 0.0 facing north ' do
            vector = Vector.new
            eva = Robot.new

            position = eva.position
            direction = eva.direction

            expect(position).to eq vector.position
            expect(direction).to eq vector.direction
        end
    end

    context 'knows how to move arond the world' do
        it 'forward' do
            axis_x = 0
            axis_y = 1
            eva = Robot.new
            vectors = ['f']

            eva.move(vectors)
            position = eva.position

            expect(position).to eq [axis_x,axis_y]
        end 

        it 'backward' do
            axis_x = 0
            axis_y = -1
            eva = Robot.new
            vectors = ['b']

            eva.move(vectors)
            position = eva.position

            expect(position).to eq [axis_x,axis_y]
        end

        it 'left' do
            axis_x = -1
            axis_y = 0
            eva = Robot.new
            vectors = ['l']

            eva.move(vectors)
            position = eva.position

            expect(position).to eq [axis_x,axis_y]
        end

        it 'right' do
            axis_x = 1
            axis_y = 0
            eva = Robot.new
            vectors = ['r']

            eva.move(vectors)
            position = eva.position

            expect(position).to eq [axis_x,axis_y]
        end
    end

    context 'knows how to change its direction' do
        it 'south' do
            axis_x = 0
            axis_y = 0
            eva = Robot.new
            vectors = ['b','S','b']

            eva.move(vectors)
            position = eva.position

            expect(position).to eq [axis_x,axis_y]
        end

        it 'west' do
            axis_x = 1
            axis_y = -1
            eva = Robot.new
            vectors = ['b','W','b']

            eva.move(vectors)
            position = eva.position

            expect(position).to eq [axis_x,axis_y]
        end
    end
end