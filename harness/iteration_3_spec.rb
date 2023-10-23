require 'rspec'
require './lib/employee'
require './lib/department'
require './lib/budget'

RSpec.describe 'Employees and Departments Spec Harness' do
  before(:each) do
    @bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "$100000"})
    @aaron = Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})  
    @customer_service = Department.new("Customer Service") 
    @budget = Budget.new
  end

  describe 'Iteration 3' do
    it '3. Budget Instantiation' do
      expect(Budget).to respond_to(:new).with(1).argument

      expect(@customer_service).to be_a(Department)
      expect(@customer_service).to respond_to(:name).with(0).argument
      expect(@customer_service.name).to eq("Customer Service")
      expect(@customer_service).to respond_to(:employees).with(0).argument
      expect(@customer_service.employees).to eq([])
    end

    it '4. Hire Employees' do
      expect(@customer_service).to respond_to(:hire).with(1).argument
      @customer_service.hire(@bobbi)
      @customer_service(@aaron)
      expect(@customer_service.employees).to eq([@bobbi, @aaron])
    end

    it '5. Track Expenses' do
      expect(@customer_service).to respond_to(:expenses).with(0).argument
      expect(@customer_service.expenses).to eq(0)
      expect(@customer_service).to respond_to(:expense).with(1).argument
      @customer_service.expense(100)
      @customer_service.expense(25)
      expect(@customer_service.expenses).to eq(125)
    end
  end
end