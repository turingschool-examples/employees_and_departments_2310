require './lib/department'
require './lib/employee'

RSpec.describe Department do
  before(:each) do
    @customer_service = Department.new("Customer Service") 
    @bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
    @aaron = Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})  
  end

  describe '#initialize' do
    it 'exists' do
      expect(@customer_service).to be_a(Department)
    end
  end

  describe '#attributes' do
    it 'reads and returns attributes' do
      expect(@customer_service.name).to eq("Customer Service")
      expect(@customer_service.employees).to eq([])

    end
  end

  describe '#hire' do
    it 'hires employees' do
      @customer_service.hire(@bobbi)
      @customer_service.hire(@aaron)
      expect(@customer_service.employees).to eq([@bobbi, @aaron])
    end
  end

  describe '#expenses' do
    it 'shows the expense' do
      expect(@customer_service.expenses).to eq(0)
      @customer_service.expense(100)
      @customer_service.expense(25)
      expect(@customer_service.expenses).to eq(125)
      
    end
  end
end