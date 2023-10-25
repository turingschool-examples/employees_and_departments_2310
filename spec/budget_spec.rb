require 'spec_helper'

RSpec.describe Budget do

  it 'exists' do
    customer_service = Department.new("Customer Service")
    finance = Department.new("Finance")
    budget = Budget.new(2023)

    expect(budget).to be_instance_of(Budget)
    expect(budget.year).to eq(2023)
  end

end