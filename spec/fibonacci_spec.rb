require_relative '../classes/fibonacci'
require_relative '../errors/invalid_number_error'

RSpec.describe Fibonacci do
  describe 'validation' do
    
    context 'valid' do
      it 'should be able to be instantiated with a number greater than 0' do
        expect { Fibonacci.new(1) }.not_to raise_error { InvalidNumberError }
      end
    end
    
    context 'invalid' do
      it 'should raise error when passed a number <= zero' do
        expect { Fibonacci.new(0) }.to raise_error { InvalidNumberError }
      end
    end
  end

  describe '.calculate_fibonacci' do
    it 'should calculate the first N digits of the fibonacci sequence' do
    end
  end

end