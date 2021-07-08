require "towerofhanoi.rb"
require "rspec"
require "byebug"


describe TowerOfHanoi do
    subject(:game1) { TowerOfHanoi.new }  

    describe "#initialize" do       
        it "should create a 2d array, discs, with 3 empty sub-arrays" do
            expect(game1.discs).to eq([[], [], []])
        end

        it "should track the size of every sub-array" do 
            expect(game1.sizes).to eq([0, 0, 0])
        end

    end

end