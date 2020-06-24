require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../customer')
require_relative('../drink')
require_relative('../pub')

class TestCustomer < Minitest::Test

    def setup()
        @customer = Customer.new("John", 100, 29)
        @pub = Pub.new("Brass Monkey", 0, @drinks)
        @drink1 = Drink.new("IPA", 5, 2)
        @drink2 = Drink.new("Pilsner", 6, 3)
        @drink3 = Drink.new("Lager", 4, 2)
        @drinks = [@drink1, @drink2, @drink3]
    end

    def test_customer_has_name()
        assert_equal("John", @customer.name)
    end

    def test_there_is_money_in_wallet()
        assert_equal(100, @customer.wallet)
    end
    
    def test_customer_buys_drink()
        @customer.buy_drink(@drink1, @pub)
        assert_equal(95, @customer.wallet)
        assert_equal(5, @pub.till)
    end

    def test_customer_age()
        assert_equal(29, @customer.age)
    end

    def test_customer_is_sober()
        assert_equal(0, @customer.drunkenness)
    end




end