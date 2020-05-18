require './lib/direction/south'

describe 'South' do
    context 'when move to' do
        it 'forward decrease axis y' do
            axis_x = 0
            axis_y = -1
            next_position = [axis_x,axis_y]
            point = Point.new
            south = South.new(point)
           
            point = south.forward
            position = point.position

            expect(position).to eq next_position
        end

        it 'backward increase axis y' do
            axis_x = 0
            axis_y = 1
            next_position = [axis_x,axis_y]
            point = Point.new
            south = South.new(point)
           
            point = south.backward
            position = point.position

            expect(position).to eq next_position
        end

        it 'left increase axis x' do
            axis_x = 1
            axis_y = 0
            next_position = [axis_x,axis_y]
            point = Point.new
            south = South.new(point)
           
            point = south.left
            position = point.position

            expect(position).to eq next_position
        end
        
        it 'right decrease axis x' do
            axis_x = -1
            axis_y = 0
            next_position = [axis_x,axis_y]
            point = Point.new
            south = South.new(point)
           
            point = south.right
            position = point.position

            expect(position).to eq next_position
        end
    end
end