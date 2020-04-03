require_relative '../classes/generate_sequences'
require_relative '../classes/prime'
require_relative '../classes/fibonacci'
require_relative '../classes/format_output'

RSpec.describe GenerateSequences do
  describe 'generate' do
    
    context 'without prime flag' do
      it 'will call the correct class' do
        expect_any_instance_of(Fibonacci).to receive(:calculate_fibonacci).and_return([])
        expect_any_instance_of(FormatOutput).to receive(:format_sequence).once
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