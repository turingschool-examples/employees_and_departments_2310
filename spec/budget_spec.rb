require './lib/department'
require './lib/employee'
require './lib/budget'

require "pry"

RSpec.describe Budget do
  it "exists" do
    budget_2023 = Budget.new("2023")
    expect(budget_2023).to be_a Budget
  end

  it "has a year" do
    budget_2023 = Budget.new("2023")
    expect(budget_2023.year).to eq("2023")
  end

  it "has departments" do
    budget_2023 = Budget.new("2023")
    expect(budget_2023.departments).to eq([])
  end





end