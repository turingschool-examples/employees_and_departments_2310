class Employee
  attr_reader :data
  attr_accessor :data
  def initialize(data_hash)
    @data = {
      name: data_hash[:name],
      age: data_hash[:age],
      salary: data_hash[:salary]
    }
  end

  def name
    @data[:name]
  end

  def age
    @data[:age].to_i
  end

  def salary
    @data[:salary].delete("$").to_i
  end

  def give_raise(num)
    salary = @data[:salary].delete("$").to_i
    salary = salary + num
    salary = salary.to_s.insert(0, '$')
    @data[:salary] = salary
  end
end
