require './lib/employee'

RSpec.describe Employee do
  before(:each) do
    @bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "$100000"})
  end

  describe '#initialize' do
    it 'exists' do
      expect(@bobbi).to be_a(Employee)
    end
  end

  describe '#attributes' do
    it 'reads the attributes' do
      expect(@bobbi.name).to eq("Bobbi Jaeger")
      expect(@bobbi.age).to eq(30)
      # require 'pry'; binding.pry
      expect(@bobbi.salary).to eq(100000)
    end
  end
end