require './lib/employee'
require './lib/department'

class Budget
    attr_reader :year, :departments
    #           :int   :array

    def initialize(year_input)
        @year = year_input
        @departments = []
    end
end