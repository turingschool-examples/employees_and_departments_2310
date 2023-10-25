class Department
    attr_reader :name, 
                :employees, 
                :employee_name, 
                :expenses
                
    def initialize(name)
        @name = name
        @employees = []
        @expenses = 0
    end

    def hire(employee_name)
        @employees << Employee.new(employee)
    end

    def expense(expense_amount)
       @expenses = @expenses + expense_amount
    end

end