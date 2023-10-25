require './lib/employee'

class Department
    attr_reader :employees, :expenses, :name

    def initialize(name_input)
        @name = name_input
        @employees = []
        @expenses = 0
    end

    def hire(employee)
        @employees.append(employee)
    end

    def expense(expense_input)
        @expenses += expense_input
    end
end