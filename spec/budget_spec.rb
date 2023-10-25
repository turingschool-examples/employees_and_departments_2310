require './lib/department'
require './lib/employee'
require './lib/department'

RSpec.describe Budget do
  it "exists" do
    budget = Budget.new(2023)

    expect(budget(2023)).to be_a(Budget)
  end

  it "has a list of departments" do
    budget = Budget.new(2023)

    expect(budget.departments).to be_a(Array)
  end

  it "can add departments"
    budget = Budget.new(2023)
    customer_service = Department.new("Customer Service")
    shipping = Department.new("Shipping")
    warehouse = Department.new("Warehouse")

    budget.add_department(customer_service)
    budget.add_department(shipping)
    budget.add_department(warehouse)
    expect(budget.departments.count).to eq(3)

end
