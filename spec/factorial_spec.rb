require_relative '../classes/factorial'
require_relative '../errors/invalid_number_error'

RSpec.describe Factorial do
  describe 'validation' do
    
    context 'valid' do
      it 'should be able to be instantiated with a number greater than 0' do
        expect { Factorial.new(1) }.not_to raise_error { InvalidNumberError }
      end
    end
    
    context 'invalid' do
      it 'should raise error when passed a number <= zero' do
        expect { Factorial.new(0) }.to raise_error { InvalidNumberError }
      end
    end
  end
end