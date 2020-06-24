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
    end

    def test_pub_has_name()
        assert_equal("Rose n Crown", @pub.name)
    end


end