require 'point'

describe 'Point' do
    context 'when created' do
        it 'is in position 0.0' do
            point = Point.new
            axis_x = 0
            axis_y = 0
            initial_position = [axis_x,axis_y]

            position = point.position

            expect(position).to eq initial_position
        end
    end

    context 'when change' do
        it 'increasing axis y' do
            axis_x = 0
            axis_y = 1
            next_position = [axis_x,axis_y]
            point = Point.new

            point.increase_y
            position = point.position

            expect(position).to eq next_position
        end

        it 'decreasing axis y' do
            axis_x = 0
            axis_y = -1
            next_position = [axis_x,axis_y]
            point = Point.new

            point.decrease_y
            position = point.position

            expect(position).to eq next_position
        end

        it 'decreasing axis x' do
            axis_x = -1
            axis_y = 0
            next_position = [axis_x,axis_y]
            point = Point.new

            point.decrease_x
            position = point.position

            expect(position).to eq next_position
        end

        it 'increasing axis x' do
            axis_x = 1
            axis_y = 0
            next_position = [axis_x,axis_y]
            point = Point.new

            point.increase_x
            position = point.position

            expect(position).to eq next_position
        end
    end
end