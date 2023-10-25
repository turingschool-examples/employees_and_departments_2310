require 'spec_helper'

RSpec.describe Department do

  it 'exists' do
    customer_service = Department.new("Customer Service")

    expect(customer_service).to be_instance_of(Department)
    expect(customer_service.name).to eq("Customer Service")
    expect(customer_service.employees).to eq([])
  end

  it 'hires employee' do
    customer_service = Department.new("Customer Service")
    bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
    aaron = Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})  
    customer_service.hire(bobbi)
    customer_service.hire(aaron) 

    expect(customer_service.employees).to be_instance_of(Array)
    expect(customer_service.employees.first).to be_instance_of(Employee)
  end

end