require 'spec_helper'

RSpec.describe Employee do

  it 'exists' do
    bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "$100000"})

    expect(bobbi).to be_instance_of(Employee)
    expect(bobbi.name).to eq("Bobbi Jaeger")
    expect(bobbi.age).to eq(30)
    expect(bobbi.salary).to eq(100000)
  end

  it 'gives raise' do
    bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "$100000"})
    bobbi.give_raise(5000)

    expect(bobbi.salary).to eq(105000)
  end

end