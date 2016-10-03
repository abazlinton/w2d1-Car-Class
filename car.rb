require_relative 'engine'


class Car

	attr_reader :model, :top_speed, :engine, :speed, :fuel	

	def initialize(model, top_speed, engine)
		@model = model
		@top_speed = top_speed
		@engine = engine
		@fuel = 100 ##### CONSTANT #####
		@speed = 0
	end

	def accelerate
		@speed += @engine.accelerate
		@fuel -= @engine.fuel_use
	end

	def break
		#better order?
		@speed -= 10
		@speed = 0 if speed < 0
	end

	





end


