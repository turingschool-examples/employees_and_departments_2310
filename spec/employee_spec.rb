require './lib/employee'
require 'pry'
RSpec.describe Employee do
  it 'can initialize' do
    bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "$100000"})

    expect(bobbi).to be_an_instance_of(Employee)
  end

  it 'can change age to an integer'do
    bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "$100000"})

    expect(bobbi.age).not_to eq("30")
  end

  it 'can give a raise' do
    bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "$100000"})

    expect(bobbi.give_raise(5000)).to eq(105000)
  end
end