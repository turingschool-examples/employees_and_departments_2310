require './lib/department'
require './lib/employee'
require './lib/budget'


RSpec.describe Budget do

  it 'can initialize' do
    budget = Budget.new

    expect(budget).to be_an_instance_of(Budget)
  end


end