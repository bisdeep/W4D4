require "main.rb"
require "rspec"
describe Array do
    #subject([1,2,3,1,3]) {Array.new}
    describe '#my_unique' do
        it "removes duplicates from an array" do
            arr = [1,2,3,1,3]
            expect(arr.my_unique).to eq([1,2,3])
        end
        
        it "should return a new array" do
            arr = [1,2,3,1,3]
            expect(arr.my_unique).to_not equal(arr)
        end

    end
end