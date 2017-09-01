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
     expect(a).to equal(b) # object identity - a and b refer to the same object
       expect(b).not_to equal(c)
       expect(b).not_to eql(c)
       expect(b).to eq(c)
    end
     it 'should test the various different type of comparison matcher' do
        d = 5
        e = 10
        f = 20
        expect(e).to be > d # check if e is greater than d
        expect(e).to be <= f # check to see if equal to or less than f
        expect(f).to be >= e # check to see if f is greater than or equal to e
        expect(e).to be_between(d, f).inclusive # check whether e is between d & f
        expect(d).not_to be_between(e, f).inclusive # check whether d is NOT between e & f
    end
    it 'should test the various class type matchers' do
        g = 5.0
        h = Hash.new
        expect(g).to be_a(Float) #check if g is a float
        expect(h).to be_a(Hash) #check if h is a hash
    end

    it 'should test the Truthiness and existentialism' do
          i = true
          j = nil
          k = false

          expect(i).to be_truthy
          expect(i).to be true 
          expect(j).to be_nil
          expect(k).to be_falsey
          

    end

    it 'should test type/classes' do

        class Login
            def test 
            end
        end
        y = Login.new

        expect(y).to respond_to :test


    
    end
end
end