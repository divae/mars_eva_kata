require './src/point'

describe 'Point' do
    context 'when created' do
        it 'is in position 0.0' do
            point = Point.new
            initial_position = [0,0]

            position = point.position

            expect(position).to eq initial_position
        end
    end

    context 'when change' do
        it 'forward advance one position' do
            next_position = [1,0]
            point = Point.new

            point.forward
            position = point.position

            expect(position).to eq next_position
        end

        it 'backward go back one position' do
            next_position = [-1,0]
            point = Point.new

            point.backward
            position = point.position

            expect(position).to eq next_position
        end

        it 'left one position' do
            eye_x = -1
            eye_y = 0
            next_position = [eye_x,eye_y]
            point = Point.new

            point.left
            position = point.position

            expect(position).to eq next_position
        end
    end
end