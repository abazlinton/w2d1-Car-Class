require 'minitest/autorun'
require 'minitest/rg'
require 'pry-byebug'
require_relative '../car.rb'

class TestCar < MiniTest::Test

	def setup
		@test_engine = Engine.new("standard")
		@test_car = Car.new("Astra", 120, @test_engine)
	end

	def test_type
		assert_equal( "Astra", @test_car.model)
	end

	def test_engine
		assert_equal( "standard", @test_car.engine.type)
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

	def test_turbo_engine
		@test_engine = Engine.new("turbo")
		@test_car = Car.new("Astra", 120, @test_engine)
		assert_equal("turbo", @test_car.engine.type)
	end

	def test_accelerate_standard
		@test_car.accelerate
		assert_equal(10, @test_car.speed)
		assert_equal(95, @test_car.fuel)
	end

	def test_accelerate_turbo
		@test_engine = Engine.new("turbo")
		@test_car = Car.new("Astra", 120, @test_engine)		
		@test_car.accelerate
		assert_equal(12, @test_car.speed)
		assert_equal(93, @test_car.fuel)
	end

	def test_accelerate_eco
		@test_engine = Engine.new("eco")
		@test_car = Car.new("Astra", 120, @test_engine)
		@test_car.accelerate
		assert_equal(8, @test_car.speed)
		assert_equal(97, @test_car.fuel)
	end

	def test_speed_below_zero
		@test_car.break
		assert_equal(0, @test_car.speed)
	end




end
