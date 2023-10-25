require './lib/employee'
require './lib/department'
require './lib/budget'

RSpec.describe Department do
    it "can initialize new Budget" do
        budget = Budget.new(2023)
        expect(budget.year).to eq(2023)
        expect(budget.departments).to eq([])
    end

end