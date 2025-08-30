require_relative '../calculator'

RSpec.describe Calculator do
    describe '#add' do
        it "adds two integers correctly" do
            calc = Calculator.new
            expect(calc.add(2, 3)).to eq(5)
        end

        it 'adds integer to 0' do
            calc = Calculator.new
            expect(calc.add(4, 0)).to eq(4)
        end

        it 'returns the sum of two negative numbers' do
            calc = Calculator.new
            expect(calc.add(-6, -8)).to eq(-14)
        end
    end

    describe '#subtract' do
        it 'returns the difference of two numbers' do
            calc = Calculator.new
            expect(calc.subtract(6, 3)).to eq(3)
        end

        it 'returns zero when subtracting the same number' do
             calc = Calculator.new
            expect(calc.subtract(5, 5)).to eq(0)
        end

        it 'returns a negative when smaller minus bigger' do
             calc = Calculator.new
            expect(calc.subtract(2, 8)).to eq(-6)
        end
    end

    describe '#divide' do
        it 'returns the quotient of two numbers' do
            calc = Calculator.new
            expect(calc.divide(20, 4)).to eq(5.0)
        end
  end
end
