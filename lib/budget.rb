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
end