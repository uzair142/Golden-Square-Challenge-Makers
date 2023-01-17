require 'diary'

describe "make_snippet method" do
    context 'should' do
        it 'returns the first five words of the string' do
        expect(make_snippet("I am a man of many qualities")).to eq("I am a man of")
        end
        
        it 'splits the word into an array' do
        expect(count_words("I went to the shop")).to eq(5)
        end   
    end
    
        
end