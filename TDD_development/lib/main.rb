require "byebug"
class Array
    def my_unique
        hash = Hash.new(0)
        self.each {|item| hash[item] += 1}
        hash.keys
    end

    def two_sum
        new_arr = []
        self.each_with_index { |el, i| self.each_with_index { |el2, i2| new_arr << [i, i2] if i2 > i && el + el2 == 0 } }
        new_arr
    end

    def my_transpose
        arr = []
        (0...self.length).each do |i|
            row = []
            self.each { |subarr| row << subarr[i] }
            arr << row
        end
        arr
    end

    def stock_picker
        pairs = []
        self.each_with_index do |price, day|
            self.each_with_index { |price2, day2| pairs << [day, day2] if day2 > day }
        end
        margin = pairs.map{|pair| (self[pair[1]] - self[pair[0]]) }
        pairs[margin.index(margin.max)]
    end

end