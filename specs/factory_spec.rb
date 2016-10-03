require 'minitest/autorun'
require 'minitest/rg'
require 'pry-byebug'
require_relative '../engine.rb'

class TestFactory < MiniTest::Test

	test_car = Car.new("Corsa", 110, "eco")
	

end