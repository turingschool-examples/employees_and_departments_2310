require 'pry'
require './lib/department'
require './lib/employee'

RSpec.describe Employee do
  it 'can intialize' do
    bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "$100000"})

    expect(bobbi).to be_a Employee
  end
end