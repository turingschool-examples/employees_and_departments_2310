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

        it "lists its departments" do
            budget = Budget.new(1912)

            expect(budget.departments).to eq([])
        end
    end

    describe "#add_department" do
        it "adds department object to @departments array" do
            budget = Budget.new(1912)
            customer_service = Department.new("Customer Service")

            budget.add_department(customer_service)

            expect(budget.departments).to include(customer_service)
            expect(budget.departments.first).to be_a Department
        end
    end
end