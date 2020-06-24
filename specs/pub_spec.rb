require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../pub')
require_relative('../drink')
require_relative('../customer')

class TestPub < Minitest::Test

    def setup()
        @drink1 = Drink.new("IPA", 5, 2)
        @drink2 = Drink.new("Pilsner", 6, 3)
        @drink3 = Drink.new("Lager", 4, 2)
        @drinks = [@drink1, @drink2, @drink3]
        @pub = Pub.new("Rose n Crown", 1000, @drinks)
        @pub2 = Pub.new("Brass Monkey", 0, @drinks)
        @customer_young = Customer.new("Al", 100, 16)
        @customer_old = Customer.new("Bob", 100, 93)
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

    def test_put_money_in_till()
        @pub.put_money_in_till(10)
        assert_equal(1010, @pub.till)
    end

    def test_customer_age_overage()
        result = @pub.check_age(@customer_old)
        assert_equal(true, result)
    end

    def test_customer_age_underage()
        result = @pub.check_age(@customer_young)
        assert_equal(false, result)
    end

    def test_customer_too_drunk_true()
        @customer_old.buy_drink(@drink1, @pub)
        @customer_old.buy_drink(@drink1, @pub)
        @customer_old.buy_drink(@drink1, @pub)
        @customer_old.buy_drink(@drink1, @pub)
        @customer_old.buy_drink(@drink1, @pub)
        @customer_old.buy_drink(@drink1, @pub)
        result = @pub.check_drunkenness(@customer_old)
        assert_equal(true, result)
    end

    def test_customer_too_drunk_false()
        result = @pub.check_drunkenness(@customer_young)
        assert_equal(false, result)
    end

    
end