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
        it 'increasing eye y' do
            eye_x = 0
            eye_y = 1
            next_position = [eye_x,eye_y]
            point = Point.new

            point.increase_y
            position = point.position

            expect(position).to eq next_position
        end

        it 'decreasing eye y' do
            eye_x = 0
            eye_y = -1
            next_position = [eye_x,eye_y]
            point = Point.new

            point.decrease_y
            position = point.position

            expect(position).to eq next_position
        end

        it 'decreasing eye x' do
            eye_x = -1
            eye_y = 0
            next_position = [eye_x,eye_y]
            point = Point.new

            point.decrease_x
            position = point.position

            expect(position).to eq next_position
        end

        it 'increasing eye x' do
            eye_x = 1
            eye_y = 0
            next_position = [eye_x,eye_y]
            point = Point.new

            point.increase_x
            position = point.position

            expect(position).to eq next_position
        end
    end
end