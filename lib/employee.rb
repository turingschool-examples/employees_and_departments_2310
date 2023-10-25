class Employee
    attr_reader :name, :age, :salary

    def initalize(input_info)
        @name = input_info[:name]
        @age = input_info[:age].to_i
        @salary = input_info[:salary].slice!(0).to_i
    end

    def give_raise(raise_ammount)
        @salary += raise_ammount
    end
end