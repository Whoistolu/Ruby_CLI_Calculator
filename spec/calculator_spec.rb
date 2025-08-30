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
            expect(calc.subtract(6, 3)).to eq(3)
        end
  end
end
