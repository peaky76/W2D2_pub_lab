require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../pub')
require_relative('../drink')

class TestPub < Minitest::Test

    def setup()
        @drink1 = Drink.new("IPA", 5)
        @drink2 = Drink.new("Pilsner", 6)
        @drink3 = Drink.new("Lager", 4)
        @drinks = [@drink1, @drink2, @drink3]
        @pub = Pub.new("Rose n Crown", 1000, @drinks)
        @pub2 = Pub.new("Brass Monkey", 0, @drinks)
    end

    def test_pub_has_name()
        assert_equal("Rose n Crown", @pub.name)
    end

    def test_till_has_cash_true()
        assert_equal(true, @pub.cash_in_till?())
    end

    def test_till_has_cash_false()
        assert_equal(false, @pub2.cash_in_till?())
    end

    def test_pub_has_drinks()
        assert_equal(3, @pub.drinks.length)
    end

    def test_get_price_of_a_drink()
        result = @pub.get_drink_price(@drink1)
        assert_equal(5, result)
    end



end