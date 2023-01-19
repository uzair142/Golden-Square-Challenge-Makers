require 'music'

describe Music do
    
    before (:each) do
        @tracks = Music.new()
    end
    
    context 'The track entry has an issue' do
        
        it 'should raise an error message if the track name is not entered' do
            expect{@tracks.add( "", "Celine Dion")}.to raise_error("The track could not be added as no trackname has been mentioned") 
        end
        
        it 'should raise an error message if the artist name is not entered' do
            expect{@tracks.add("My heart will go on", "")}.to raise_error("The track could not be added as no artist name has been mentioned") 
        end
    end
    
        it 'should successfully add a track' do
            expect(@tracks.add("My heart will go on", "Celine Dion")).to eq("Track is successfully added")
        end
        
        it 'should return a message if the track list is empty' do
            expect(@tracks.view_tracks()).to eq("Your track list is empty. Kanye maybe?")
        end
        
        it 'should return the track list if it is not empty' do
            @tracks.add("My heart will go on", "Celine Dion")
            expect(@tracks.view_tracks()).to eq("Your track list includes: My heart will go on, Celine Dion")
        end
end