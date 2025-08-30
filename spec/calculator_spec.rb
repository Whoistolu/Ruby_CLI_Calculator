require_relative '../calculator'

RSpec.describe Calculator do
    let(:calc) { Calculator.new }

  describe '#add' do
    it 'adds two integers correctly' do
      expect(calc.add(2, 3)).to eq(5)
    end

    it 'adds integer to 0' do
      expect(calc.add(4, 0)).to eq(4)
    end

    it 'returns the sum of two negative numbers' do
      expect(calc.add(-6, -8)).to eq(-14)
    end
  end

  describe '#subtract' do
    it 'returns the difference of two numbers' do
      expect(calc.subtract(6, 3)).to eq(3)
    end

    it 'returns zero when subtracting the same number' do
      expect(calc.subtract(5, 5)).to eq(0)
    end

    it 'returns a negative when smaller minus bigger' do
      expect(calc.subtract(2, 8)).to eq(-6)
    end
  end

  describe '#divide' do
    it 'returns the quotient of two numbers' do
      expect(calc.divide(20, 4)).to eq(5.0)
    end

    it 'returns the number when divided by 1' do
      expect(calc.divide(4, 1)).to eq(4.0)
    end

    it 'returns a float when odd divided by even' do
      expect(calc.divide(7, 20)).to eq(0.35)
    end

    it 'raises error when dividing by zero' do
      expect { calc.divide(5, 0) }.to raise_error(ZeroDivisionError)
    end
  end

  describe '#multiply' do
    it 'returns the product of two numbers' do
      expect(calc.multiply(25, 4)).to eq(100)
    end

    it 'returns zero when multiplied by zero' do
      expect(calc.multiply(8, 0)).to eq(0)
    end

    it 'returns a negative when multiplied by a negative' do
      expect(calc.multiply(6, -3)).to eq(-18)
    end
  end
end
