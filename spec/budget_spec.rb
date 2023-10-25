require "./lib/employee"
require "./lib/department"
require "./lib/budget"

describe Budget do
    describe "#initialize" do
        it "exists" do
            budget = Budget.new

            expect(budget).to be_a Budget
        end
    end
end