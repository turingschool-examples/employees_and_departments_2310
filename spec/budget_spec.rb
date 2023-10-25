require './lib/department'
require './lib/employee'
require './lib/budget'

require "pry"

RSpec.describe Budget do
  it "exists" do
    budget_2023 = Budget.new(2023)
    expect(budget_2023).to be_a Budget
  end

  it "has a year" do
    budget_2023 = Budget.new(2023)
    expect(budget_2023.year).to eq(2023)
  end

  it "has departments" do
    budget_2023 = Budget.new(2023)
    expect(budget_2023.departments).to eq([])
  end

  it "can add departments" do
    budget_2023 = Budget.new(2023)
    customer_service = Department.new("Customer Service")
    janitorial = Department.new("Janitorial")
    
    budget_2023.add_department(customer_service)
    expect(budget_2023.departments).to eq([customer_service])
    budget_2023.add_department(janitorial)
    expect(budget_2023.departments).to eq([customer_service, janitorial])
  end

  it "has method to identify departments with low expenses" do
    budget_2023 = Budget.new(2023)
    customer_service = Department.new("Customer Service")
    janitorial = Department.new("Janitorial")
    budget_2023.add_department(customer_service)
    budget_2023.add_department(janitorial)

    customer_service.expense(500)
    customer_service.expense(25)


    expect(budget_2023.departments).to eq([customer_service, janitorial])

    expect(budget_2023.departments_with_low_expenses).to eq([janitorial])
    janitorial.expense(25)
    expect(budget_2023.departments_with_low_expenses).to eq([janitorial])



  end


end