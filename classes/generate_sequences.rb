require 'pry'
require_relative './prime'
require_relative './fibonacci'
require_relative './format_output'

class GenerateSequences
  
  attr_reader :max_sequence, :generate_primes
  
  def initialize(max_sequence, generate_primes)
    @max_sequence = max_sequence
    @generate_primes = generate_primes
  end

  def generate
    return generate_both if generate_primes?
    generate_one
  end


  private

  def generate_primes?
    generate_primes == "true" ? true : false
  end

  def generate_one
    sequence = Fibonacci.new(max_sequence).calculate_fibonacci
    puts FormatOutput.new("Fibonacci", sequence).format_sequence
  end

  def generate_both
    generate_one
    primes = Prime.new(max_sequence).calculate_primes
    puts FormatOutput.new("Primes", primes).format_sequence
  end

end