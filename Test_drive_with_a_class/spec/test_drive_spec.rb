require 'test_drive'

describe DiaryEntry do
    
    before(:each) do
        @entry = DiaryEntry.new("Harry Potter", "Voldemort was killed and died")
    end
    
    context 'should' do
        it 'returns the title' do
            expect(@entry.title).to eq("Harry Potter")
        end
        
        it 'returns the contents of the book' do
            expect(@entry.contents).to eq("Voldemort was killed and died")
        end
        
        it 'returns the number of words in the book as an integer' do
            expect(@entry.count_words).to eq(5)
        end
        
        it 'returns the time taken to read the book as an integer' do
            @entry.count_words()
            expect(@entry.reading_time(1)).to eq(5)
        end
        
        it 'returns the time taken to read the book as an integer' do
            @entry.count_words()
            expect(@entry.reading_time(2)).to eq(3)
        end
        
        it 'returns the first two words of the contents' do
          @entry.count_words()
          expect(@entry.reading_chunk(1,2)).to eq("Voldemort was")
        end
        
        it 'returns the second two words of the contents' do
          @entry.count_words()
          @entry.reading_chunk(1,2)
          expect(@entry.reading_chunk(1,2)).to eq("killed and")
        end
        
        it 'restarts and returns the first two words of the contents' do
          @entry.count_words()
          @entry.reading_chunk(1,2)
          @entry.reading_chunk(1,2)
          expect(@entry.reading_chunk(1,2)).to eq("Voldemort was")
        end
    end
end