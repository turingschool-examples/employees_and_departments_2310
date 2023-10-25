require './lib/employee'

RSpec.describe Employee do
  it "exists" do
  bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "$100000"})

  expect(bobbi).to be_a(Employee)
  end

  it "has readable attributes" do
    bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})

    expect(bobbi.name).to eq("Bobbi Jaeger")
    expect(bobbi.age).to eq(30)
    expect(bobbi.salary).to eq(100000)
  end

  it "#give_raise adds raise to @salary" do
  bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})

  bobbi.give_raise(5000)

  expect(bobbi).to be_a(Employee)
  expect(bobbi.salary).to eq(105000)
  end
end