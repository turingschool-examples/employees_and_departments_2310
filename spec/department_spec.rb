require './lib/department'
require './lib/employee'

RSpec.describe Employee do

  it 'can initialize' do
    customer_service = Department.new("Customer Service")

    expect(customer_service).to be_an_instance_of(Department)
    expect(customer_service.name).to eq("Customer Service")
    expect(customer_service.employees).to eq([])
  end

  it 'can hire employees' do
    customer_service = Department.new("Customer Service")
    bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
    aaron = Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})  

    customer_service.hire(bobbi)
    customer_service.hire(aaron)

    expect(customer_service.employees).to eq([bobbi, aaron])
  end

  it 'can spend no money' do
    customer_service = Department.new("Customer Service")

    expect(customer_service.expenses).to eq(0)
  end

  it 'can spend all that money' do
    customer_service = Department.new("Customer Service")

    customer_service.expense(100) #in pry session these output the running increase??
    customer_service.expense(25)

    expect(customer_service.expenses).to eq(125)
  end
end