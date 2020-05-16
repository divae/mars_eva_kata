require './src/robot'

describe 'Robot' do
    context 'when created' do
        it 'is in position 0.0 direction north' do
            eye_x = 0
            eye_y = 0
            point = [eye_x,eye_y]
            eva = Robot.new

            position = eva.position?
            direction = eva.direction?

            expect(position).to eq point
            expect(direction).to eq :north
        end
    end
end