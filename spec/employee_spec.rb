require './lib/employee'

RSpec.describe Employee do 
  before(:each) do
    @bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "$100000"})
  end

  describe '#initialize' do
    it 'initializes employee' do 
    end
  end

  describe '#give a raise' do
    it 'can give a raise to employee' do 
      expect(@bobbi.give_raise).to eq(5000)

      @bobbi.give_raise(5000)

      expect(@bobbi.salary).to eq(105000)
    end
  end
end





