require './lib/department'
require './lib/employee'
require './lib/budget'

RSpec.describe Budget do
  it "exists" do
    budget = Budget.new({year: "2023"})

    expect(budget).to be_a(Budget)
  end

  it "has readable attributes" do
    budget = Budget.new({year: "2023"})

    expect(budget.year).to eq("2023")
  end
end