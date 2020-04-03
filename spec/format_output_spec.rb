require_relative '../classes/format_output'

RSpec.describe FormatOutput do
  
  describe 'format_sequence' do
    context 'with array' do
      it 'will correctly format the input' do
        label = "Fibonacci"
        sequence = [0, 1, 1, 2, 3, 5]
        result = FormatOutput.new(label, sequence).format_sequence

        expect(result).to eq("#{label}: 0 1 1 2 3 5\n")
      end
    end

    context 'without array' do
      it 'will correctly format the input' do
        label = "Primes"
        sequence = []
        result = FormatOutput.new(label, sequence).format_sequence

        expect(result).to eq("#{label}: \n")
      end
    end
  end

end