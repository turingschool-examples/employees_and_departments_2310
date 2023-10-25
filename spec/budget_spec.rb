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


end