require 'rspec'

def subtract(num1,num2)
	num1 - num2
end

def add(num1,num2)
	num1 + num2
end

def times(num1,num2)
	num1 * num2
end

def divide(num1,num2)
	num1 / num2
end

describe "calculator" do


	# Calculator

	it "should subtract 2 numbers" do
		expect(subtract(6,2)).to eq 4
	end

	it "should add 2 numbers" do
		expect(add(6,2)).to eq 8
	end

	it "should multiply 2 numbers" do
		expect(times(2,2)).to eq 4
	end

	it "should divide 2 numbers" do
		expect(divide(10,5)).to eq 2
	end


end