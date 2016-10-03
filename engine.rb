class Engine

	attr_reader :acceleration, :fuel_use, :type

	def initialize(type)
		@type = type
		case @type
		when "turbo"
			@acceleration = 12
			@fuel_use = 7
		when "eco"
			@acceleration = 8
			@fuel_use = 3
		when "standard"
			@acceleration = 10
			@fuel_use = 5
		end
	end

	def accelerate
		return @acceleration
	end




end
