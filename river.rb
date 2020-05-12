class River

    attr_accessor :name, :fish

    def initialize(name)
        @name = name
        @fish = []
    end

    def eaten_fish(name)
        @fish.delete(name)
    end

    def fish_count
        return @fish.length
    end

    def add_fish(name)
        @fish.append(name)
    end

end
