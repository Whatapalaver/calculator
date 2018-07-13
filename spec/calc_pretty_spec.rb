require 'calc_pretty'
describe CalculatorPretty do
    it 'responds to method add' do
       expect(subject). to respond_to (:add)
    end
    it 'responds to method add with two arguments' do
        expect(subject). to respond_to(:add).with(2).argument
    end

    # So I can see pretty results
    # I want to add two numbers and get "the sum of a and b is result"

    it 'gives "The sum of 1 and 1 is 2" when passed 1 and 1 as arguments' do
        expect(subject.add(1,1)).to eq "The sum of 1 and 1 is 2"
    end
    it 'gives "The sum of 1 and 2 is 3" when passed 1 and 2 as arguments' do
        expect(subject.add(1,2)).to eq "The sum of 1 and 2 is 3"
    end
end