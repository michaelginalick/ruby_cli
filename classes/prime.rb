require_relative '../errors/invalid_number_error.rb'

class Prime
  
  def initialize(number)
    raise InvalidNumberError.new("Please provide a positive number") unless number > 0
    @number = number
    @result = []
  end

end