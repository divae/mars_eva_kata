describe 'Mars eva Word' do
    
    context 'when created' do
        it 'Mars Eva is the type Game' do
            type_game = Game
            mars_eva = Game.new.class

            expect(mars_eva).to be type_game
        end
    end

end

class Game
end