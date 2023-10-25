require './lib/department'
require './lib/employee'

RSpec.describe Department do
  before(:each)do 
    @customer_service = Department.new("Customer Service")    
  end
end

  describe '#initialize' do
    it 'can initialize' do
    end
  end

  describe 'customer service has employees' do
    it "can add employees and has expenses" do
      expect(@customer_service.name).to eq("Customer Service")
      expect(@customer_service.employees).to eq([])

      bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
      bobbi = Employee.new({name: "Aaron Meister", age: "21", salary: "50000"})

    end
  end


    