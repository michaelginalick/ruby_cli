require_relative '../classes/generate_sequences.rb'
require_relative '../classes/prime.rb'
require_relative '../classes/fibonacci.rb'

RSpec.describe GenerateSequences do
  describe 'generate' do
    
    context 'without prime flag' do
      it 'will call the correct class' do
        expect_any_instance_of(Fibonacci).to receive(:calculate_fibonacci).and_return([])
        expect(Prime).not_to receive(:new)

        GenerateSequences.new(1, nil).generate
      end
    end
    
    context 'with the prime flag' do
      it 'will call the correct classes' do
        expect_any_instance_of(Fibonacci).to receive(:calculate_fibonacci).and_return([])
        expect_any_instance_of(Prime).to receive(:calculate_primes).and_return([])

        GenerateSequences.new(1, "true").generate
      end
    end

  end

end