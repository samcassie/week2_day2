require('minitest/autorun')
require('minitest/reporters')

Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

require_relative('../fish.rb')
require_relative('../bear.rb')
require_relative('../river.rb')

class FishTest < MiniTest::Test

    def setup()

        @river1 = River.new("Amazon")

        @fish1 = Fish.new("Adam")
        @fish2 = Fish.new("Steve")

        @bear1 = Bear.new("Fluffy", "Grizzly")

    end

    def test_fish_name
        assert_equal("Adam", @fish1.name)
    end





end
