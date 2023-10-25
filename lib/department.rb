class Department
    attr_reader :employees, :expenses, :name

    def initialize(name_input)
        @name = name_input
        @employees = []
        @expenses = 0
    end
end