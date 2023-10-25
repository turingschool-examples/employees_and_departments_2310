require "./lib/employee"

describe Employee do
    it "exists" do
        bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "$100000"})

        expect(bobbi).to be_a Employee
    end

    it "instantiates employee name, age, and salary" do
        bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "$100000"})

        expect(bobbi.name).to eq("Bobbi Jaeger")
        expect(bobbi.age).to eq("30")
        expect(bobbi.salary).to eq(100000)
    end
end