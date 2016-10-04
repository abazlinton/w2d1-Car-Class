


class Car

    attr_reader :model, :engine, :speed, :fuel, :top_speed

    def initialize(model, engine)
        @model = model
        @engine = engine
        @top_speed = engine.top_speed
        @fuel = 100
        @speed = 0
    end

    def accelerate
        @speed += @engine.accelerate
        @fuel -= @engine.fuel_use
        @speed = 0 if @fuel <= 0
        @speed = @top_speed if @speed > @top_speed
    end

    def brake
        @speed -= 10
        @speed = 0 if @speed < 0
    end

    def follow_sequence(command_string)
        counter = 0
        commands_count = command_string.length
        for counter in 0..( commands_count - 1 )
            if command_string[ counter ] == "a"
                self.accelerate
            elsif command_string[ counter ] == "b"
                self.brake
            end
        end
    end
 
end


