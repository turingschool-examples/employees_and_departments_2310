require 'rspec'
require './lib/employee'

RSpec.describe 'Employees Spec Harness' do
  before(:each) do
    @bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "$100000"})
  end

  describe 'Iteration 1' do
    it '1. Employee Instantiation' do
      expect(Employee).to respond_to(:new).with(1).argument

      expect(@bobbi).to be_a(Employee)
      expect(@bobbi).to respond_to(:name).with(0).argument
      expect(@bobbi.name).to eq("Bobbi Jaeger")
      expect(@bobbi).to respond_to(:age).with(0).argument
      expect(@bobbi.age).to eq(30)
      expect(@bobbi).to respond_to(:salary).with(0).argument
      expect(@bobbi.salary).to eq(100000)
    end

    it '2. Gives Employee Raise' do
      expect(@bobbi).to respond_to(:give_raise).with(1).argument
      @bobbi.give_raise(5000)
      expect(@bobbi.salary).to eq(105000)
    end
  end
end