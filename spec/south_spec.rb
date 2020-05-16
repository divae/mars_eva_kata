require './src/south'

describe 'South' do
    context 'when move to' do
        it 'forward decrease eye y' do
            eye_x = 0
            eye_y = -1
            next_position = [eye_x,eye_y]
            point = Point.new
            north = South.new(point)
           
            point = north.forward
            position = point.position

            expect(position).to eq next_position
        end
    end
end