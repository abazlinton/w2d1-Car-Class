require_relative 'engine'


class Car

	attr_reader :model, :top_speed, :engine, :speed, :fuel	

	def initialize(model, top_speed, engine)
		@model = model
		@top_speed = top_speed
		@engine = Engine.new(engine)
		@fuel = 100 ##### CONSTANT #####
		@speed = 0
	end

	def accelerate
		@speed += @engine.accelerate
		@fuel -= 5
	end

	def break
		@speed -= 10
	end





end


