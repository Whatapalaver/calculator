require 'calculator'
describe Calculator do
    it 'responds to method add' do
       expect(subject). to respond_to (:add)
    end
    it 'responds to method add with two arguments' do
        expect(subject). to respond_to(:add).with(2).argument
    end
    it 'gives 2 when passed 1 and 1 as arguments' do
        expect(subject.add(1,1)).to eq 2
    end
    it 'gives 3 when passed 1 and 2 as arguments' do
        expect(subject.add(1,2)).to eq 3
    end

    # So I can see pretty results
    # I want to add two numbers and get "the sum of a and b is result"

    it 'gives "The sum of 1 and 1 is 2" when passed 1 and 1 as arguments' do
        expect(subject.pretty_add(1,1)).to eq "The sum of 1 and 1 is 2"
    end
    it 'gives "The sum of 1 and 2 is 3" when passed 1 and 2 as arguments' do
        expect(subject.pretty_add(1,2)).to eq "The sum of 1 and 2 is 3"
    end

    # I want to add an array of numbers
    it 'responds to method array_add' do
        expect(subject). to respond_to (:array_add)
    end
    it 'responds to method add with two arguments' do
        expect(subject). to respond_to(:array_add).with(1).argument
    end
    it 'gives 15 when passed [1,2,3,4,5] as arguments' do
        expect(subject.array_add([1,2,3,4,5])).to eq 15
    end
    it 'gives 24 when passed [10,2,3,4,5] as arguments' do
        expect(subject.array_add([10,2,3,4,5])).to eq 24
    end

    # I want to add two numbers and see "the sum of a and b is result" in my terminal
    it 'responds to method puts_add' do
        expect(subject). to respond_to (:puts_add)
     end
     it 'responds to method puts_add with two arguments' do
         expect(subject). to respond_to(:puts_add).with(2).argument
     end
     it 'gives 2 when passed 1 and 1 as arguments' do
         expect(subject.puts_add(1,1)).to eq 2
     end
     it 'puts "2" when passed 1 and 1 as arguments' do
        expect { subject.puts_add(1,1) }.to output("2\n").to_stdout
    end
end