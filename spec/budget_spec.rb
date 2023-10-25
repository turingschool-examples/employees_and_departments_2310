require './lib/department'
require './lib/employee'
require './lib/budget'

RSpec.describe Budget do
  it "exists" do
    budget = Budget.new(2023)

    expect(budget).to be_a(Budget)
  end

  it "has a list of departments" do
    budget = Budget.new(2023)

    expect(budget.departments).to be_a(Array)
  end

  it "can add departments" do
    budget = Budget.new(2023)
    customer_service = Department.new("Customer Service")
    shipping = Department.new("Shipping")
    warehouse = Department.new("Warehouse")

    budget.add_department(customer_service)
    budget.add_department(shipping)
    budget.add_department(warehouse)
    expect(budget.departments.count).to eq(3)
  end

  it "can return low expense offices" do
    budget = Budget.new(2023)
    customer_service = Department.new("Customer Service")
    shipping = Department.new("Shipping")
    warehouse = Department.new("Warehouse")

    budget.add_department(customer_service)
    budget.add_department(shipping)
    budget.add_department(warehouse)
    require 'pry'; binding.pry
    expect(budget.departments_with_low_expenses).to be_a(Array)
  end
end
