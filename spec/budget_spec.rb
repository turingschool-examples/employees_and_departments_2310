require "./lib/employee"
require "./lib/department"
require "./lib/budget"

describe Budget do
    describe "#initialize" do
        it "exists" do
            budget = Budget.new(1912)

            expect(budget).to be_a Budget
        end

        it "has a year" do
            budget = Budget.new(1912)

            expect(budget.year).to eq(1912)
        end
    end
end