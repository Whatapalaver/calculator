require 'calculator'
describe Calculator do
    it 'responds to method add' do
       calculator = Calculator.new
        expect(calculator). to respond_to (:add)
    end
end