require 'minitest/autorun'
require 'minitest/rg'
require 'pry-byebug'
require_relative '../engine.rb'

class TestEngine < MiniTest::Test


	def setup
		@turbo_engine = Engine.new("turbo")
		@eco_engine = Engine.new("eco")
		@standard_engine = Engine.new("standard")

	end

	def test_acc__turbo
		assert_equal( 12, @turbo_engine.acceleration)
	end

	def test_fuel_use__turbo
		assert_equal( 7, @turbo_engine.fuel_use)
	end

	def test_acc__eco
		assert_equal( 8, @eco_engine.acceleration)
	end

	def test_fuel_use__eco
		assert_equal( 3, @eco_engine.fuel_use)
	end

	def test_acc__standard
		assert_equal( 10, @standard_engine.acceleration)
	end

	def test_fuel_use__standard
		assert_equal( 5, @standard_engine.fuel_use)
	end

	def test_accelerate
		assert_equal( 12, @turbo_engine.accelerate)
		assert_equal( 8, @eco_engine.accelerate)
		assert_equal( 10, @standard_engine.accelerate)
	end


end
