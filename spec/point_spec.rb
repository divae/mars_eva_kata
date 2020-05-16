require './src/point'

describe 'Point' do
    context 'when created' do
        it 'is in position 0.0' do
            point = Point.new
            eye_x = 0
            eye_y = 0
            initial_position = [eye_x,eye_y]

            position = point.position

            expect(position).to eq initial_position
        end
    end

    context 'when change' do
        it 'forward advance one position' do
            eye_x = 0
            eye_y = 1
            next_position = [eye_x,eye_y]
            point = Point.new

            point.forward
            position = point.position

            expect(position).to eq next_position
        end

        it 'backward go back one position' do
            eye_x = 0
            eye_y = -1
            next_position = [eye_x,eye_y]
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

        it 'right one position' do
            eye_x = 1
            eye_y = 0
            next_position = [eye_x,eye_y]
            point = Point.new

            point.right
            position = point.position

            expect(position).to eq next_position
        end
    end
end