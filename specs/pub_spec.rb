require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../.rb')
require_relative('../.rb')

class TestRiver < Minitest::Test


end