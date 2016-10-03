class Car

	attr_reader :model, :top_speed, :engine, :speed, :fuel	

	def initialize(model, top_speed, engine = "standard")
		@model = model
		@top_speed = top_speed
		@engine = engine
		@fuel = 100
		@speed = 0
	end

end


