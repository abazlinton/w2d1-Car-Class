class Engine


	attr_reader :acc_multiplier, :fuel_multiplier

	def initialize(type)
		if type == "turbo"
			@acc_multiplier = 1.2
			@fuel_multiplier = 1.3
		elsif type == "eco"
			@acc_multiplier = 0.8
			@fuel_multiplier = 0.7
		end
	end




end
