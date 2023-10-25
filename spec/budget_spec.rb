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

    describe "#departments_with_low_expenses" do
        it "lists departments with expenses fewer than $500" do
            budget = Budget.new(1912)
            customer_service = Department.new("Customer Service")
            accounting = Department.new("Accounting")
            kingdom_hearts_lore_division = Department.new("Kingdom Hearts Lore Division")

            customer_service.expense(499)
            accounting.expense(500)
            kingdom_hearts_lore_division.expense(501)

            budget.add_department(customer_service)
            budget.add_department(accounting)
            budget.add_department(kingdom_hearts_lore_division)

            expect(budget.departments_with_low_expenses).to include(customer_service)
        end
    end
end