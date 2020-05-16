require './src/direction/east'

describe 'East' do
    context 'when move to' do
        it 'forward increase eye x' do
            eye_x = 1
            eye_y = 0
            next_position = [eye_x,eye_y]
            point = Point.new
            east = East.new(point)
           
            point = east.forward
            position = point.position

            expect(position).to eq next_position
        end
    end
end