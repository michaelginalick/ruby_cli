require 'pry'
require_relative './prime.rb'
require_relative './fibonacci.rb'

class GenerateSequences
  
  attr_reader :max_sequence, :generate_primes
  
  def initialize(max_sequence, generate_primes)
    @max_sequence = max_sequence
    @generate_primes = generate_primes
  end

  def generate
    fib = Fibonacci.new(max_sequence).calculate_fibonacci
    if generate_primes?
      primes = Prime.new(max_sequence).calculate_primes
    end
  end


  private

  def generate_primes?
    generate_primes == "true" ? true : false
  end

end