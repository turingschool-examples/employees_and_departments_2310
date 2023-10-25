require './lib/budget'
require './lib/department'
require './lib/employee'
require 'pry'


RSpec.describe Budget do
  it 'can initialize' do
    budget_2023 = Budget.new(2023)

    expect(budget_2023).to be_an_instance_of(Budget)
  end

  it 'can add departments' do
    budget_2023 = Budget.new(2023)
    customer_service = Department.new("Customer Service")

    expect(budget_2023).to be_an_instance_of(Budget)
    expect(budget_2023.add_department(customer_service)) 
  end

  it 'can find low expense departments' do
    budget_2023 = Budget.new(2023)
    customer_service = Department.new("Customer Service")
    quality = Department.new("Quality")

    customer_service.expense(250)
    quality.expense(5000)

    budget_2023.add_department(customer_service)
    budget_2023.add_department(quality)

    expect(budget_2023.departments_with_low_expenses).not_to eq([])
  end

  it 'can add employees' do
    budget_2023 = Budget.new(2023)
    customer_service = Department.new("Customer Service")
    quality = Department.new("Quality")

    budget_2023.add_department(customer_service)
    budget_2023.add_department(quality)

    bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
    aaron = Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})  

    customer_service.hire(bobbi)
    customer_service.hire(aaron)

    customer_service.expense(250)
    quality.expense(5000)

    expect(budget_2023.departments.first.employees).not_to be_empty
    expect(budget_2023.departments[1].employees).to eq([])
  end

  it 'can collect total salaries' do
    budget_2023 = Budget.new(2023)
    customer_service = Department.new("Customer Service")
    quality = Department.new("Quality")

    budget_2023.add_department(customer_service)
    budget_2023.add_department(quality)

    bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
    aaron = Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})  

    customer_service.hire(bobbi)
    customer_service.hire(aaron)
    binding.pry
    expect(@salaries).not_to eq([])
  end
end