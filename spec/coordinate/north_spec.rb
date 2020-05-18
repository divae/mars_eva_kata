require 'coordinate/north'

describe 'North' do
    context 'when move to' do
        it 'forward increase axis y' do
            axis_x = 0
            axis_y = 1
            next_position = [axis_x,axis_y]
            point = Point.new
            north = North.new(point)
           
            point = north.forward
            position = point.position

            expect(position).to eq next_position
        end

        it 'backward decrease axis y' do
            axis_x = 0
            axis_y = -1
            next_position = [axis_x,axis_y]
            point = Point.new
            north = North.new(point)
            
            point = north.backward
            position = point.position

            expect(position).to eq next_position
        end

        it 'left decrease axis x' do
            axis_x = -1
            axis_y = 0
            next_position = [axis_x,axis_y]
            point = Point.new
            north = North.new(point)
            
            point = north.left
            position = point.position

            expect(position).to eq next_position
        end

        it 'right increase axis x' do
            axis_x = 1
            axis_y = 0
            next_position = [axis_x,axis_y]
            point = Point.new
            north = North.new(point)
           
            point = north.right
            position = point.position

            expect(position).to eq next_position
        end
    end
end