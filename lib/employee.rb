class Employee
    attr_reader :name, :age, :salary

    def initialize(details)
        @name = details[:name]
        @age = details[:age]
        @salary = details[:salary]
    end
end