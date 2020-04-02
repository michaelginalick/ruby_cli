require_relative '../errors/invalid_number_error.rb'

class Prime
  attr_reader :number
  attr_writer :result
  
  def initialize(number)
    raise InvalidNumberError.new("Please provide a positive number") unless number > 0
    @number = number
    @result = []
  end

  def calculate_primes
    return @result if number < 2
    i = 2
    
    loop do
      isPrime(i)
      break if @result.length == number
      i+=1
    end
    @result
  end
  
  private

  def isPrime(num)
    sqrt = Math.sqrt(num)
    2.upto(sqrt)) do |i|
      return if num % i == 0
    end
    @result << num
  end

end