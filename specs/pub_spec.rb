require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../pub')

class TestPub < Minitest::Test

    def setup()
        # @pub = Pub.new("Rose n Crown", 1000, )

    end


end