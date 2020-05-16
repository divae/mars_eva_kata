describe 'Direction' do
    context 'when created' do
        it 'is direction north' do
            direction = Direction.new
            cardinal_point = 'N'

            expect(direction).to eq cardinal_point
        end
    end
end