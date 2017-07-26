require 'rspec'

class Fizzbuzz

	def multiple_of_3(num)
		if(num % 3 == 0)
			return 'fizz'
		end
	end

	def multiple_of_5(num)
		if(num % 5 == 0)
			return 'buzz'
		end
	end

	def multiple_of_15(num)
		if(multiple_of_3(num) == 'fizz' && multiple_of_5(num) == 'buzz')
			return 'fizzbuzz'
		end
	end

	def print_number
		for num in 1..100
			return num
		end

	end

	def fizzbuzz
		fizz_buzz_array = []

		for num in 1..100

			if multiple_of_15(num) == 'fizzbuzz'
				fizz_buzz_array.push('fizzbuzz')
			elsif multiple_of_3(num) == 'fizz'
				fizz_buzz_array.push('fizz')
			elsif multiple_of_5(num) == 'buzz'
				fizz_buzz_array.push('buzz')
			else 
				fizz_buzz_array.push(num)
			end
		end

		return fizz_buzz_array

	end
end




describe "Fizzbuzz" do

	it 'should print out fizz for multiples of 3' do
		expect(multiple_of_3(3)).to eq('fizz')
	end

	it 'should print out buzz for multiples of 5' do
		expect(multiple_of_5(5)).to eq('buzz')
	end

	it 'should print out fizzbuzz for multiples of 15' do
		expect(multiple_of_15(15)).to eq('fizzbuzz')
	end

	it 'should return fizz for index[2]' do

		fizz_buzz_array = fizzbuzz

		expect(fizz_buzz_array[2]).to eq('fizz')
	end

	it 'should return buzz for index[4]' do
		fizz_buzz_array = fizzbuzz

		expect(fizz_buzz_array[4]).to eq('buzz')
	end

	it 'should return fizzbuzz for index[14]' do
		fizz_buzz_array = fizzbuzz

		expect(fizz_buzz_array[14]).to eq('fizzbuzz')
	end

end