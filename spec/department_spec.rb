require './lib/department'
require './lib/employee'


RSpec.describe Department do

  it "exists" do
    customer_service = Department.new("Customer Service")

    expect(customer_service).to be_a(Department)
  end

  it "has a name" do
    customer_service = Department.new("Customer Service")

    expect(customer_service.name).to eq("Customer Service")
  end

  it "has employees" do
    customer_service = Department.new("Customer Service")

    expect(customer_service.employees).to be_a(Array)
  end

  it "can add employees" do
    customer_service = Department.new("Customer Service")
    bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
    aaron = Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})
    customer_service.hire(bobbi)
    customer_service.hire(aaron)

    expect(customer_service.employees.count).to eq(2)
  end

  it "has expenses" do
    customer_service = Department.new("Customer Service")

    expect(customer_service.expenses).to eq(0)
  end

  it "can add an expense to expenses" do
    customer_service = Department.new("Customer Service")

    customer_service.expense(100)
    customer_service.expense(25)

    expect(customer_service.expenses).to eq(125)
  end
end
