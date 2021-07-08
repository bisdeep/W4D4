class Array
    def my_unique
        hash = Hash.new(0)
        self.each {|item| hash[item] += 1}
        hash.keys
    end

end