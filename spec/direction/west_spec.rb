require './src/direction/west'

describe 'West' do
    context 'when move to' do
        it 'forward decrease axis x' do
            axis_x = -1
            axis_y = 0
            next_position = [axis_x,axis_y]
            point = Point.new
            west = West.new(point)
           
            point = west.forward
            position = point.position

            expect(position).to eq next_position
        end
    end
end