require_relative '../errors/invalid_number_error.rb'

class Fibonacci
  attr_reader :number
  attr_writer :memo

  def initialize(number)
    raise InvalidNumberError.new("Please provide a positive number") unless number > 0
    @number = number
    @memo = {}
  end

  def calculate_fibonacci
    fibonacci(number)

    @memo.values[0..number-1].sort
  end

  private

  def fibonacci(num)
   if num <= 1
      @memo[num] = num
      return @memo[num]
   end

   memoize(num)
  end

  def memoize(num)
    if @memo[num].nil?
      @memo[num] = fibonacci(num-1) + fibonacci(num-2)
    end
    @memo[num]
  end


end