require_relative '../errors/invalid_number_error.rb'

class Prime
  attr_reader :max_primes
  attr_writer :result
  
  def initialize(max_primes)
    raise InvalidNumberError.new("Please provide a positive number") unless max_primes > 0
    @max_primes = max_primes
    @result = []
  end

  def calculate_primes
    return @result if max_primes < 2
    num = 2
    
    loop do
      isPrime(num)
      break if @result.length == max_primes
      num.even? ? num+=1 : num+=2
    end
    @result
  end
  
  private

  def isPrime(num)
    sqrt = Math.sqrt(num)
    2.upto(sqrt) do |i|
      return if num % i == 0
    end
    @result << num
  end

end