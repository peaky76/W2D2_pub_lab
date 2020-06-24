require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../customer.rb')
require_relative('../drink.rb')

class TestCustomer < Minitest::Test

    def setup()
        @customer = Customer.new("John", 100)
    end

    def test_customer_has_name()
        assert_equal("John", @customer.name)
    end
    


end