require 'optparse'
require_relative './errors/invalid_number_error.rb'
require_relative './classes/generate_sequences.rb'

system("clear")

options = {}
OptionParser.new do |parser|
  parser.banner = "Usage: main.rb [options]"

  parser.on("--help", "--help", "") do |_e|
    options[:help] = true
    puts parser
  end

  parser.on("--prime", "--prime true", String, "Will also calculate the number of primes.") do |prime|
    options[:prime] = prime
  end

end.parse!

if options[:help].nil?
  begin
    args = ARGV
    raise InvalidNumberError.new("Please provide a valid number greater than 0") unless args.length > 0 && args[0].to_i > 0
    GenerateSequences.new(args[0].to_i, options[:prime]).generate
  rescue => exception
    puts "#{exception}"
  end
end