require './lib/employee'
require './lib/department'

class Budget
    attr_reader :year, :departments
    #           :int   :array

    def initialize(year_input)
        @year = year_input
        @departments = []
    end

    def add_department(department_input)
        @departments.append(department_input)
    end

    def departments_with_low_expenses
        cheap_departments = []
            @departments.each do |department|
                if department.expenses < 500
                    cheap_departments.append(department)
                end
            end
        cheap_departments
    end

    def employee_salaries
        salaries = []
            @departments.each do |department|
                department.employees.each do |employee|
                    salaries.append(employee.salary)
                end
            end
        salaries
    end

    def current_expenses_by_department
        hash = {}
        @departments.each do |department|
            hash[:department] = department.expenses
        end
        hash
    end
end