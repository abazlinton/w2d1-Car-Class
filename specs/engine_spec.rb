require 'minitest/autorun'
require 'minitest/rg'
require 'pry-byebug'
require_relative '../engine.rb'

class TestEngine < MiniTest::Test


	def setup
		

		@turbo_engine = Engine.new("turbo")
		@eco_engine = Engine.new("eco")
	end

	def test_acc_multiplier__turbo
		assert_equal( 1.2, @turbo_engine.acc_multiplier)
	end

	def test_fuel_multiplier__turbo
		assert_equal( 1.3, @turbo_engine.fuel_multiplier)

	end

	def test_acc_multiplier__eco
		assert_equal( 0.8, @eco_engine.acc_multiplier)

	end

	def test_fuel_multiplier__eco
		assert_equal( 0.7, @eco_engine.fuel_multiplier)
	end




end
