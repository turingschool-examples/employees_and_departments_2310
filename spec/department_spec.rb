require './lib/employee'
require './lib/department'
require 'pry'


RSpec.describe Department do
  it 'can initialize' do
    customer_service = Department.new("Customer Service")    

    expect(customer_service).to be_an_instance_of(Department)
    expect(customer_service.name).to eq("Customer Service")
    expect(customer_service.employees).to eq([])
  end

  it 'can add employees' do
    customer_service = Department.new("Customer Service") 
    bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
    aaron = Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})  

    customer_service.hire(bobbi)
    customer_service.hire(aaron)

    expect(customer_service.employees).not_to eq([])
  end

  it 'can expense' do
    customer_service = Department.new("Customer Service")
    customer_service.expense(500)

    expect(customer_service.expenses).to eq(500)
  end
end
