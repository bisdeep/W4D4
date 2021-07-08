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
end