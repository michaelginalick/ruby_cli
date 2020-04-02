require_relative '../errors/invalid_number_error.rb'

class Fibonacci
  attr_reader :number
  def initialize(number)
    raise InvalidNumberError.new("Please provide a positive number") unless number > 0
    @number = number
    @result = []
    @memo = {}
  end

  def calculate_fibonacci

  end

end