class TowerOfHanoi

    attr_reader :discs, :sizes
    def initialize
        @discs = [[], [], []]
        @sizes = @discs.map { |subarr| subarr.length }
    end
end

