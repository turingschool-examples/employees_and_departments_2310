class Department
    attr_reader :name, 
                :employees, 
                :employee_name, 
                :expenses,
                :expense_amount

    def initialize(name)
        @name = name
        @employees = []
        @expenses = 0
    end

    def hire(employee)
        @employees << Employee.new(employee)
    end

    def expense(expense_amount)
        @expenses + expense_amount
    end

end