require('minitest/autorun')
require('minitest/reporters')

Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

require_relative('../river.rb')
require_relative('../bear.rb')
require_relative('../fish.rb')

class RiverTest < MiniTest::Test

    def setup()

        @river1 = River.new("Amazon")

        @fish1 = Fish.new("Adam")
        @fish2 = Fish.new("Steve")

        @bear1 = Bear.new("Fluffy", "Grizzly")

    end

    def test_river_name
        assert_equal("Amazon", @river1.name)
    end

    def test_fish_count
        @river1.add_fish(@fish1)
        @river1.add_fish(@fish2)
        assert_equal(2, @river1.fish_count)
    end


end
