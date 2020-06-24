require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../customer')
require_relative('../drink')
require_relative('../pub')
require_relative('../food')


class TestCustomer < Minitest::Test

    def setup()
        @customer = Customer.new("John", 100, 29)
        @pub = Pub.new("Brass Monkey", 0, @drinks)
        @drink1 = Drink.new("IPA", 5, 2)
        @drink2 = Drink.new("Pilsner", 6, 3)
        @drink3 = Drink.new("Lager", 4, 2)
        @drinks = [@drink1, @drink2, @drink3]
        @food1 = Food.new("chips", 8, 4)
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

    def test_drunkennes_goes_up()
        @customer.buy_drink(@drink1, @pub)
        assert_equal(2,@customer.drunkenness)
    end

    def test_customer_buys_food()
        @customer.buy_drink(@drink1, @pub)
        @customer.buy_drink(@drink1, @pub)
        @customer.buy_drink(@drink1, @pub)
        @customer.buy_food(@food1, @pub)
        assert_equal(2 ,@customer.drunkenness)
    end

end