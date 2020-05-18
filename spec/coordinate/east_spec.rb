require 'coordinate/east'

describe 'East' do
    context 'when move to' do
        it 'forward increase axis x' do
            axis_x = 1
            axis_y = 0
            next_position = [axis_x,axis_y]
            point = Point.new
            east = East.new(point)
           
            point = east.forward
            position = point.position

            expect(position).to eq next_position
        end

        it 'backward decrease axis x' do
            axis_x = -1
            axis_y = 0
            next_position = [axis_x,axis_y]
            point = Point.new
            east = East.new(point)
            
            point = east.backward
            position = point.position

            expect(position).to eq next_position
        end

        it 'left increase axis y' do
            axis_x = 0
            axis_y = 1
            next_position = [axis_x,axis_y]
            point = Point.new
            east = East.new(point)
           
            point = east.left
            position = point.position

            expect(position).to eq next_position
        end

        it 'right decrease axis y' do
            axis_x = 0
            axis_y = -1
            next_position = [axis_x,axis_y]
            point = Point.new
            east = East.new(point)
            
            point = east.right
            position = point.position

            expect(position).to eq next_position
        end
    end
end