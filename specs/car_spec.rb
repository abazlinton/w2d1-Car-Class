require 'minitest/autorun'
require 'minitest/rg'
require 'pry-byebug'
require_relative '../car.rb'

class TestCar < MiniTest::Test

	def setup

		@test_car = Car.new("Astra", 120)


	end

	def test_type
		assert_equal( "Astra", @test_car.model)
	end

	def test_engine
		assert_equal( "standard", @test_car.engine)
	end

	def test_fuel
		assert_equal( 100, @test_car.fuel)
	end

	def test_top_speed
		assert_equal( 120, @test_car.top_speed)
	end

	def test_speed
		assert_equal( 0, @test_car.speed)
	end




end
