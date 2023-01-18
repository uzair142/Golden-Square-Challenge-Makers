require 'check'

describe "Check Method" do
    context "The string is empty" do
        it "should return false" do
        expect(check("")).to eq(false)
        end
    end
    
    context "The string does not have #TODO" do
        it "should return false" do
        expect(check("Hello")).to eq(false)
        end
    end
    
    context "The string has #TODO" do
        it "should return true" do
        expect(check("I have nothing better #TODO")).to eq(true)
        end
    end
end