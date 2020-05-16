require './src/north'

describe 'North' do
    context 'when' do
        it 'forward increase eye y' do
            eye_x = 0
            eye_y = 1
            next_position = [eye_x,eye_y]
            point = Point.new
            north = North.new(point)
g
            point = north.forward
            position = point.position

            expect(position).to eq next_position
        end
    end
end