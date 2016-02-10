class Amount

	def initialize(value)
		@value = value
	end

	def coins
		if @value == 0
			return 0
		elsif @value.to_i >= 25
			quarter
		elsif @value.to_i >= 10
			dime
		elsif @value.to_i >= 5
			nickel
		else
			return @value.to_i
		end
	end

	def quarter
		if @value.to_i % 25 == 0
		    return (@value.to_i / 25)
		else
			new_value = @value.to_i - 25
			return (Amount.new(new_value).coins) + 1
		end
	end

	def dime
		if @value.to_i % 10 == 0
    		return (@value.to_i / 10)
   		else
    		new_value = @value.to_i - 10
			return (Amount.new(new_value).coins) + 1
		end
	end

	def nickel
		if @value.to_i % 5 == 0
			return (@value.to_i / 5)
		else
			new_value = @value.to_i - 5
			return (Amount.new(new_value).coins) + 1
		end
	end

end

