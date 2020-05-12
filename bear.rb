class Bear

    attr_accessor :name, :type, :stomach

    def initialize(name, type)
        @name = name
        @type = type
        @stomach = []
    end

    def eats_fish(river)
        @stomach.append(name)
    end

    def roar
        return "Roar"
    end

    def food_count
        return @stomach.length
    end


end
