require './lib/department'
require './lib/employee'
require './lib/budget'

RSpec.describe Budget do
  it "exists" do
    budget = Budget.new

    expect(budget).to be_a(Budget)
  end
end