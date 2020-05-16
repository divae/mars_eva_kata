require './src/south'

describe 'South' do
    context 'when move to' do
        it 'forward decrease eye y' do
            eye_x = 0
            eye_y = -1
            next_position = [eye_x,eye_y]
            point = Point.new
            south = South.new(point)
           
            point = south.forward
            position = point.position

            expect(position).to eq next_position
        end

        it 'backward increase eye y' do
            eye_x = 0
            eye_y = 1
            next_position = [eye_x,eye_y]
            point = Point.new
            south = South.new(point)
           
            point = south.backward
            position = point.position

            expect(position).to eq next_position
        end

        it 'left increase eye x' do
            eye_x = 1
            eye_y = 0
            next_position = [eye_x,eye_y]
            point = Point.new
            south = South.new(point)
           
            point = south.left
            position = point.position

            expect(position).to eq next_position
        end
        
        it 'right decrease eye x' do
            eye_x = -1
            eye_y = 0
            next_position = [eye_x,eye_y]
            point = Point.new
            south = South.new(point)
           
            point = south.right
            position = point.position

            expect(position).to eq next_position
        end
    end
end