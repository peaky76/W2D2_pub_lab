require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../customer')
require_relative('../drink')
require_relative('../pub')
require_relative('../food')

class TestFood < Minitest::Test


    def setup()
        @food = Food.new("chips", 8, 4)
    end

    def test_food_name()
        assert_equal("chips", @food.name)
    end

    def test_food_price()
        assert_equal(8, @food.price)
    end

    def test_food_rejuvenation_level()
        assert_equal(4, @food.rejuvenation_level)
    end



end