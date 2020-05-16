require './src/direction'

describe 'Direction' do
    context 'when created' do
        it 'is direction north' do
            cardinal_point = 'N'
            direction = Direction.new

            direction_actually = direction.actually

            expect(direction_actually).to eq cardinal_point
        end
    end
end