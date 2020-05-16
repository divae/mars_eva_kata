require './src/point'

describe 'Point' do
    context 'when created' do
        it 'is in position 0.0' do
            point = Point.new
            initial_position = [0,0]

            position = point.position

            expect(position).to eq initial_position
        end
    end
end