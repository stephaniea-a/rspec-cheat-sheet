require 'rspec'

# https://relishapp.com/rspec/rspec-expectations/docs/built-in-matchers

describe "show the depths of rspec" do

  context "work through the different types of Rspec matchers" do

    it 'should test that equality matchers are different' do
      a = 1 #class of integer
      b = 1
      c = 1.0

    expect(a).to eq(b) # eq is the equivalent of == - a & b have the same value and is the generic equality operator
    expect(a).to eql(b) # object equivalence - a and b have the same value
    # expect(a).to eql(c) # This should fail as not the same value AND type
    expect(a).to equal(b) # object identity - a and b refer to the same object
    expect(b).not_to equal(c)
    expect(b).not_to eql(c)
    expect(b).to eq(c)

    # puts c.class

  	# eq(expected) # same value
 	# eql(expected) # same value and type
 	# equal(expected) # same object
    end

    it 'should test the various different type of comparison matcher' do
      d = 5
      e = 10
      f = 20

	    expect(e).to be > d # check if e is greater than d
	    expect(e).to be <= f # check to see if equal to or less than f
	    expect(f).to be >= e # check to see if f is greater than or equal to e
	    expect(e).to be_between(d,f) # check whether e is between d & f - inclusive/exclusive
	    expect(d).not_to be_between(e,f) # check whether d is NOT between e & f
    end

      it 'should test the various class type matchers' do
        g = 5.0
        h = Hash.new
        # expect(g).to be_within(0.1).of(g) #check if g is a float
        expect(g).to be_a(Float) #check if g is a float
        expect(g).to be_kind_of(Float) #check if g is a float
        expect(g).to be_instance_of(Float)

        expect(h).to be_a(Hash)
        expect(h).to be_kind_of(Hash) #check if h is a hash
        expect(h).to be_instance_of(Hash) 
        # expect(h).to be_kind_of(Hash) #check if h is a hash
      end

      it 'should test truthy/falsey' do
        h = false # should fail
        i = 2 # should pass

        test = nil

        expect(h).to be false 
        expect(i).to be_truthy 

        expect(test).to be_nil
        
      end

      it 'test values in ranges ' do

      	expect(1..10).to cover(3)
      	expect(1..10).to cover(10)
      	# expect(1...10).to cover(10) #fail 
      	expect(1..10).not_to cover(11)

      	num = 23.45

      	expect(num).to be_within(0.5).of(23.0)
      	expect(num).not_to be_within(0.1).of(23.0)


      end

      it 'testing hashes and arrays' do
      	array = [1,2]

      	expect(array).not_to be_empty
      	expect(array).to be_an(Array)

      end

      it 'String comparisons' do
      	string = 'This is a string'

      	expect(string).to start_with "T"
      	expect(string).not_to start_with "t"

      end

      it 'Testing classes and instances of' do
      	class Bread
      	end

      	loaf = Bread.new

      	expect(loaf).to be_instance_of(Bread)
      	expect(loaf).to be_a(Bread)
      	expect(loaf).to be_kind_of(Bread)

      	expect(Bread).to be_a(Class)
        expect(Bread).to be_kind_of(Class)
        expect(Bread).to be_instance_of(Class)

      end

      it 'respond to test with classes and methods' do

      	class Bread
      		def loaf
      		end
      	end

      	bun = Bread.new
        expect(bun).to respond_to(:loaf)
        expect(bun).to be_instance_of(Bread)
        expect(bun).to be_a(Bread)
      
      end

    
    # Comparisons
 	# expect(actual).to be >  expected
	# expect(actual).to be >= expected
	# expect(actual).to be <= expected
	# expect(actual).to be <  expected
	# expect(actual).to be_between(minimum, maximum).inclusive
	# expect(actual).to be_between(minimum, maximum).exclusive
	# expect(actual).to match(/expression/)
	# expect(actual).to be_within(delta).of(expected)
	# expect(actual).to start_with expected
	# expect(actual).to end_with expected

	# Types/classes/responses
	# expect(actual).to be_instance_of(expected)
	# expect(actual).to be_kind_of(expected)
	# expect(actual).to respond_to(expected)

  end
end