require './lib/employee'
require './lib/department'
require './lib/budget'

RSpec.describe Department do
    xit "can initialize new Budget" do
        budget = Budget.new(2023)
        expect(budget.year).to eq(2023)
        expect(budget.departments).to eq([])
    end

    xit "can add departments to Budget" do
        budget = Budget.new(2023)
        department1 = Department.new("Towing Crew")
        budget.add_department(department1)
        department2 = Department.new("Reposession Team")
        budget.add_department(department2)
        
        expect(budget.departments).to eq([department1, department2])
    end

    it "can see which departments in Budget class have low expenses" do
        budget = Budget.new(2023)

        department1 = Department.new("Towing Crew")
        department1.expense(600)
        budget.add_department(department1)

        department2 = Department.new("Reposession Team")
        department2.expense(300)
        budget.add_department(department2)
        
        expect(budget.departments_with_low_expenses).to eq([department2])
    end
end