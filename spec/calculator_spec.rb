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
    end
end
