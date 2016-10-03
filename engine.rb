class Engine

	attr_reader :acceleration, :fuel_use, :type, :top_speed

	def initialize(type)
		@type = type
		case @type
		when "turbo"
			@acceleration = 12
			@fuel_use = 7
			@top_speed = 130
		when "eco"
			@acceleration = 8
			@fuel_use = 3
			@top_speed = 100
		when "standard"
			@acceleration = 10
			@fuel_use = 5
			@top_speed = 110	
		end
	end

	def accelerate
		return @acceleration
	end




end
