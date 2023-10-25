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
end