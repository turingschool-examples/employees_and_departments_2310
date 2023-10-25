require 'rspec'
require './lib/employee'
require './lib/department'
require './lib/budget'

RSpec.configure do |config|
  config.default_formatter = 'doc'
end

RSpec.describe 'Budget Spec Harness' do
  before(:each) do
    @bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "$100000"})
    @aaron = Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})  
    @mike = Employee.new({name: "Mike Smith", age: "30", salary: "50000"})  
    @customer_service = Department.new("Customer Service") 
    @front_desk = Department.new("Front Desk") 
    @budget = Budget.new(2023)
  end

  describe 'Iteration 3' do
    it '6. Budget Instantiation and Add Departments' do
      expect(Budget).to respond_to(:new).with(1).argument

      expect(@budget).to be_a(Budget)
      expect(@budget).to respond_to(:year).with(0).argument
      expect(@budget.year).to eq(2023)
      expect(@budget).to respond_to(:departments).with(0).argument
      expect(@budget.departments).to eq([])
      expect(@budget).to respond_to(:add_department).with(1).argument 
      @budget.add_department(@customer_service)
      @budget.add_department(@front_desk)
      expect(@budget.departments).to eq([@customer_service, @front_desk])
    end

    it '7. Departments with expenses under 500 ' do
        parks_and_rec = Department.new("Parks and Recreation")
        parks_and_rec.expense(300)
        @customer_service.expense(400)
        @front_desk.expense(800)
        @budget.add_department(@customer_service)
        @budget.add_department(@front_desk)  
        @budget.add_department(parks_and_rec)  
        

        expect(@budget).to respond_to(:departments_with_low_expenses).with(0).arguments
        expect(@budget.departments_with_low_expenses).to include(@customer_service)
        expect(@budget.departments_with_low_expenses).to include(parks_and_rec)
        expect(@budget.departments_with_low_expenses).to_not include(@front_desk)
        expect(@budget.departments_with_low_expenses.length).to eq(2)

        parks_and_rec.expense(300)

        expect(@budget.departments_with_low_expenses).to_not include(parks_and_rec)
    end

    it '8. Employee Salaries' do
        @customer_service.hire(@bobbi)
        @customer_service.hire(@aaron)
        @front_desk.hire(@mike)
        @budget.add_department(@customer_service)
        @budget.add_department(@front_desk)  

        expect(@budget).to respond_to(:employee_salaries).with(0).arguments 
        expect(@budget.employee_salaries).to include(100000)
        expect(@budget.employee_salaries).to include(90000)
        expect(@budget.employee_salaries).to include(50000)
        expect(@budget.employee_salaries.length).to eq(3)
    end

    it '9. Expenses by department' do
        parks_and_rec = Department.new("Parks and Recreation")

        parks_and_rec.expense(300)
        @customer_service.expense(400)
        @front_desk.expense(800)

        @budget.add_department(@customer_service)
        @budget.add_department(@front_desk)  
        @budget.add_department(parks_and_rec)  

        expected_hash = {
            parks_and_rec => 300,
            @customer_service => 400,
            @front_desk => 800
        }

        expect(@budget).to respond_to(:current_expenses_by_department).with(0).arguments 
        expect(@budget.current_expenses_by_department).to eq(expected_hash)
    end
  end
end