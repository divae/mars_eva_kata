require './lib/robot'
require './lib/vector'

describe 'Robot' do
    context 'when created' do
        it 'is in position 0.0 direction north and there can only be one in the world ' do
            vector = Vector.new
            eva = Robot.new

            position = eva.position
            direction = eva.direction

            expect(position).to eq vector.position
            expect(direction).to eq vector.direction
        end
    end

    context 'knows how looking north to move' do
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

        
        it 'various positions' do
            axis_x = 0
            axis_y = -2
            eva = Robot.new
            vectors = ['b','b']

            eva.move(vectors)
            position = eva.position

            expect(position).to eq [axis_x,axis_y]
        end 
    end
end