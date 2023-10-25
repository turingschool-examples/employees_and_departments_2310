require './lib/employee'

RSpec.describe Employee do

  it 'can initialize' do
    @employee = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "$100000"})

    expect(@employee).to be_an_instance_of(Employee)
  end

end