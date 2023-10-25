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
    binding.pry
    expect(budget_2023).to be_an_instance_of(Budget)
    expect(budget_2023.add_department(customer_service)) 
  end


end