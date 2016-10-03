class Engine

	attr_reader :acc, :fuel_use, :type

	def initialize(type)
		@type = type
		case @type
		when "turbo"
			@acc = 12
			@fuel_use = 7
		when "eco"
			@acc = 8
			@fuel_use = 3
		when "standard"
			@acc = 10
			@fuel_use = 5
		end
	end

	def accelerate
		return @acc
	end




end
