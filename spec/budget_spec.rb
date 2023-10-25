require 'spec_helper'

RSpec.describe Budget do

  it 'exists' do
    budget = Budget.new(2023)

    expect(budget).to be_instance_of(Budget)
    expect(budget.year).to eq(2023)
    expect(budget.departments).to eq([])
  end

  it 'adds departments' do
    budget = Budget.new(2023)
    customer_service = Department.new("Customer Service")
    budget.add_department(customer_service)

    expect(budget.departments).to be_instance_of(Array)
    expect(budget.departments).not_to be(nil)
    expect(budget.departments.first.name).to eq("Customer Service")

    finance = Department.new("Finance")
    budget.add_department(finance)

    expect(budget.departments.last.name).to eq("Finance")
  end

  it 'returns departments with low expenses' do
    budget = Budget.new(2023)
    customer_service = Department.new("Customer Service")
    finance = Department.new("Finance")
    human_relations = Department.new("Human Relations")
    budget.add_department(customer_service)
    budget.add_department(finance)
    budget.add_department(human_relations)
    customer_service.expense(600)
    finance.expense(400)
    human_relations.expense(200)

    expect(budget.departments_with_low_expenses).to eq([finance, human_relations])
  end

end