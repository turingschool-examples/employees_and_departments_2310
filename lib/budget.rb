class Budget
    attr_reader :year, :departments
    
    def initialize(year)
        @year = year
        @departments = []
    end

    def add_department(department)
        @departments << department
    end

    def departments_with_low_expenses
        inexpensive_departments = []
        @departments.each do |department|
            if department.expenses < 500
                inexpensive_departments << department
            end
        end
        inexpensive_departments
    end

    def employee_salaries
        salaries_array = []
        @departments.each do |department|
            department.employees.each do |employee|
                salaries_array << employee.salary
            end
        end
        salaries_array
    end
end