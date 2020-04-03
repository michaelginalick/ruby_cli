require_relative './prime'
require_relative './fibonacci'
require_relative './format_output'

class GenerateSequences
  FIBONACCI_LABEL = "Fibonacci"
  PRIMES_LABEL = "Primes"
  attr_reader :max_sequence, :primes
  
  def initialize(max_sequence, primes)
    @max_sequence = max_sequence
    @primes = primes
  end

  def generate
    return generate_both if generate_primes?
    puts generate_fibonacci
  end

  private

  def generate_primes?
    primes == "true" ? true : false
  end

  def generate_fibonacci
    sequence = Fibonacci.new(max_sequence).calculate_fibonacci
    FormatOutput.new(FIBONACCI_LABEL, sequence).format_sequence
  end

  def generate_primes
    primes = Prime.new(max_sequence).calculate_primes
    FormatOutput.new(PRIMES_LABEL, primes).format_sequence
  end

  def generate_both
    threads = []
    [generate_fibonacci, generate_primes].each do |method|
      threads << Thread.new { puts method }
    end
    threads.each { |thr| thr.join }
  end

end