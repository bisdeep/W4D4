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

    describe "#two_sum" do

        it "finds all pairs of positions where elements sum to zero" do 
            arr = [-1, 0, 2, -2, 1]
            expect(arr.two_sum).to eq([[0, 4], [2, 3]])
        end

        it "should return pairs where the smaller first elements come first" do
            arr = [-1, 0, 2, -2, 1]
            expect(arr.two_sum[0][0]).to be < (arr.two_sum[1][0])
        end

        it "should return pairs where the smaller second elements come first" do
            arr = [1, -1, -1]             # [[0, 1][0, 2]]
            expect(arr.two_sum[0][1]).to be < (arr.two_sum[1][1])
        end

    end
end