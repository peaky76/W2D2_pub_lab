require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../drink')

class TestDrink < Minitest::Test

    def setup()
        @drink = Drink.new("Guiness", 4)
    end

    def test_drink_has_name()
        assert_equal("Guiness", @drink.name)
    end

    def test_drink_has_price()
        assert_equal(4, @drink.price)
    end


end