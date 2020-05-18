require './lib/vector'
require './lib/point'

describe 'Vector' do
    context 'when created' do
        it 'it is direction north' do
            cardinal_point = 'N'
            vector = Vector.new

            vector_actually = vector.cardinal

            expect(vector_actually).to eq cardinal_point
        end
    end
    context 'when it moves' do
        it 'knows how to do it in all vectors' do
            vector = Vector.new
            vectors = ['f','f','S','f','f','E','f','W','b']
            cardinal_actually = vector.cardinal
            axis_x = 2
            axis_y = 0
            next_position = [axis_x,axis_y]
            
            vector.change(vectors)
            position = vector.position

            expect(position).to eq next_position
        end
    end
end