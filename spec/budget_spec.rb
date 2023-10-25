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

    xit "can see which departments in Budget class have low expenses" do
        budget = Budget.new(2023)

        department1 = Department.new("Towing Crew")
        department1.expense(600)
        budget.add_department(department1)

        department2 = Department.new("Reposession Team")
        department2.expense(300)
        budget.add_department(department2)
        
        expect(budget.departments_with_low_expenses).to eq([department2])
    end

    xit "can make a list of Employee salaries in entire Budget" do
        budget = Budget.new(2023)

        tony = Employee.new({name: "Tony", age: "30", salary: "$79000"})
        stevie = Employee.new({name: "Stevie", age: "26", salary: "$68000"})
        marcello = Employee.new({name: "Marcello", age: "58", salary: "$120000"})
        luigi = Employee.new({name: "Luigi", age: "36", salary: "$82000"})

        department1 = Department.new("Towing Crew")
        department1.hire(tony)
        department1.hire(stevie)
        budget.add_department(department1)

        department2 = Department.new("Reposession Team")
        department1.hire(marcello)
        department1.hire(luigi)
        budget.add_department(department2)
        
        expect(budget.employee_salaries).to eq([79000, 68000, 120000, 82000])
    end

    it "can make hash with expenses by department" do
        budget = Budget.new(2023)

        expect(budget.current_expenses_by_department).to eq({})

        department1 = Department.new("Towing Crew")
        department1.expense(600)
        budget.add_department(department1)

        department2 = Department.new("Reposession Team")
        department2.expense(300)
        budget.add_department(department2)
        
        expect(budget.current_expenses_by_department[department1]).to eq(600)
        expect(budget.current_expenses_by_department[department2]).to eq(300)
    end
end