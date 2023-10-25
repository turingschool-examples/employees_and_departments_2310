require './lib/employee'

RSpec.describe Employee do
  
  it 'can intialize' do
    bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "$100000"})
    
    expect(bobbi).to be_instance_of(Employee)
  end

  it 'has a name' do
    bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "$100000"})

    expect(bobbi.name).to eq("Bobbi Jaeger")
  end

  
end