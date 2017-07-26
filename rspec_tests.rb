require 'rspec'

# https://relishapp.com/rspec/rspec-expectations/docs/built-in-matchers

describe "show the depths of rspec" do

  context "work through the different types of Rspec matchers" do

    it 'should test that equality matchers are different' do
      a = 1
      b = 1
      c = 1.0

    expect(a).to eq(b) # eq is the equivalent of == - a & b have the same value and is the generic equality operator
    expect(a).to eql(b) # object equivalence - a and b have the same value
    # expect(a).to eql(c) # This should fail as not the same value AND type
    expect(a).to equal(b) # object identity - a and b refer to the same object
    expect(b).not_to equal(c)
    expect(b).not_to eql(c)
    expect(b).to eq(c)

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
        expect(g).to be_within(0.1).of(g) #check if g is a float
        expect(g).to be_a(Float) #check if g is a float
        expect(g).to be_kind_of(Float) #check if g is a float
        expect(h).to be_a(Hash)
        expect(h).to be_kind_of(Hash) #check if h is a hash
        # expect(h).to be_kind_of(Hash) #check if h is a hash
      end
    

  end
end