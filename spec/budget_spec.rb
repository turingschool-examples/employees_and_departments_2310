require './lib/department'
require './lib/employee'
require './lib/budget'

RSpec.describe Budget do
  it "exists" do
    budget = Budget.new({year: "2023"})

    expect(budget).to be_a(Budget)
  end

  it "has readable attributes" do
    budget = Budget.new({year: "2023"})

    expect(budget.year).to eq("2023")
  end

  it "can list it's departments" do 
    budget = Budget.new({year: "2023"})

    expect(budget.departments).to eq([])

    customer_service = Department.new("Customer Service") 

    budget.add_department(customer_service)
require 'pry'; binding.pry
    expect(budget.departments).to eq()
  end
end