class Amount

	def initialize(value)
		@value = value
	end

	def coins
		if @value == 0
			return 0
		elsif @value.to_i >= 25
			if @value.to_i % 25 == 0
			    return (@value.to_i / 25)
			else
				new_value = @value.to_i - 25
				return (Amount.new(new_value).coins) + 1
			end
		elsif @value.to_i >= 10
			if @value.to_i % 10 == 0
    			return (@value.to_i / 10)
    		else
    			new_value = @value.to_i - 10
				return (Amount.new(new_value).coins) + 1
			end
		elsif @value.to_i >= 5
			if @value.to_i % 5 == 0
    			return (@value.to_i / 5)
    		else
    			new_value = @value.to_i - 5
				return (Amount.new(new_value).coins) + 1
			end
		else
			return @value.to_i
		end

	end

end

