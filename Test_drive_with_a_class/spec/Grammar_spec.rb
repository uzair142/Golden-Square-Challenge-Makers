require 'Grammar'

describe GrammarStats do
    
    before(:each) do
        @sentence1 = GrammarStats.new
        @sentence2 = GrammarStats.new
    end
    
    context 'should' do
        it "should return true if the first letter is capital" do
            expect(@sentence1.check("I like sweets.")).to eq(true)
        end
        
        it "should return false if the first letter is capital" do
            expect(@sentence1.check("like sweets.")).to eq(false)
        end
        
        it "should return 50 for two checks" do
            @sentence1.check("I like sweets.")
            expect(@sentence1.percentage_good()).to eq(100.0)
        end
        
        it "should return 50 for two checks" do
            @sentence2.check("I like sweets.")
            @sentence2.check("like sweets")
        expect(@sentence2.percentage_good()).to eq(50.0)
end
    end
end