require './lib/department'
require './lib/employee'
require './lib/budget'

RSpec.describe Budget do

  it 'can initialize' do
    budget = Budget.new

    expect(budget).to be_an_instance_of(Budget)
  end

  #not quite, but works
  it 'can set the year' do
    budget = Budget.new

    expect(budget.year).to eq(2023)
  end

  it 'can return departments array' do
    budget = Budget.new

    expect(budget.departments).to eq([])
  end

  #almost!
  it 'can add departments' do
    budget = Budget.new
    customer_service = Department.new("Customer Service")


    expect(budget.add_department(customer_service)).to be_an_instance_of(Department)
  end

  it 'can add departments by expense value' do
    budget = Budget.new
    customer_service = Department.new("Customer Service")
    customer_service.expenses(499)
    high_tech.expenses(999)

    expect(budget.add_departments_with_low_expenses(max_value)).to be_an_instance_of(Department)
  end


end