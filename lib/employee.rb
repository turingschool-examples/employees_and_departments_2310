class Employee

  attr_reader :name,
              :age,
              :salary

  def intialize(attributes)
    @name = attributes[:name]
    @age = attributes[:age]
    @salary = attributes[:salary]
  end

  def give_raise(amount)
    @salary += amount
  end
end