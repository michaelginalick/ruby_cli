require_relative '../classes/prime.rb'

RSpec.describe Prime do
  describe 'validation' do
    context 'valid' do
      it 'should be able to be instantiated with a number greater than 0' do
        expect { Prime.new(1) }.not_to raise_error { InvalidNumberError }
      end
    end

    context 'invalid' do
      it 'should raise error when passed a number <= zero' do
        expect { Prime.new(0) }.to raise_error { InvalidNumberError }
      end
    end

    describe '.calculate_primes' do
      context 'N > 2' do
        it 'should calculate the first N prime numbers' do
          result = Prime.new(6)

          expect(result.calculate_primes).to eq([2, 3, 5, 7, 11, 13])
        end
      end

      context 'N < 2' do
        it 'should calculate the first N prime numbers' do
          result = Prime.new(1)

          expect(result.calculate_primes).to eq([])
        end
      end
    end
  end
end