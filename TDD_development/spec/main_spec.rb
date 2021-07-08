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

    describe "#my_transpose" do
        it "should flip a 2d array where the values in every col becomes a row" do
            rows = [
                [0, 1, 2],
                [3, 4, 5],
                [6, 7, 8]
            ]
            cols = [
                [0, 3, 6],
                [1, 4, 7],
                [2, 5, 8]
            ]
              expect(rows.my_transpose).to eq(cols)
        end

    end

    describe "#stock_picker" do
        it "should return an array of the most profitable pair of days" do
            prices = [5, 8, 100, 4, 12, 52, 76]
            expect(prices.stock_picker).to eq([0, 2])
        end

        it "should have a smaller index of the buying day, compared to sell day" do
            prices = [5, 8, 100, 4, 12, 52, 76]
            expect(prices.stock_picker[0]).to be < (prices.stock_picker[1])
        end
    end
    

end