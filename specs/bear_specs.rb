require('minitest/autorun')
require('minitest/reporters')

Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

require_relative('../bear.rb')
require_relative('../river.rb')
require_relative('../fish.rb')

class BearTest < MiniTest::Test


    def setup()

        @river1 = River.new("Amazon")

        @fish1 = Fish.new("Adam")
        @fish2 = Fish.new("Steve")

        @bear1 = Bear.new("Fluffy", "Grizzly")

    end

    def test_bear_name
        assert_equal("Fluffy", @bear1.name)
    end

    def test_bear_takes_fish_from_river
        eaten_fish = @bear1.eats_fish(@fish1)
        assert_equal(@bear1.stomach, eaten_fish)
        @river1.eaten_fish(@fish1)
        assert_equal(0, @river1.fish.length)
    end

    def test_roar
        assert_equal("Roar", @bear1.roar)
    end

    def test_food_count
        @bear1.eats_fish(@fish2)
        assert_equal(1, @bear1.food_count)
    end

end
