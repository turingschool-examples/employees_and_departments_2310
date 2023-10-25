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
end