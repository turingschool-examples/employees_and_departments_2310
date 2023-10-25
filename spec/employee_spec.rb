require './lib/employee'

RSpec.describe Employee do

  it 'can initialize' do
    @bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "$100000"})

    expect(@bobbi).to be_an_instance_of(Employee)
  end

  it 'can give a raise to employee' do
    @bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "$100000"})
    @bobbi.give_raise(5000)

    expect(@bobbi.salary).to eq(105000)
  end

end