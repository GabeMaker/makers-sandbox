require 'fizzbuzz'

describe 'fizzbuzz' do

  it 'returns "fizz" when passed multiples of 3 (not divisible by 5)' do
    multiples = [3, 6, 9, 12, 18, 21, 24, 27]
    multiples.each do |x|
      expect(fizzbuzz(x)). to eq 'fizz'
    end
  end

  it 'returns "buzz" when passed multiples of 5 (not divisible by 3)' do
    multiples = [5, 10, 20, 25]
    multiples.each do |x|
      expect(fizzbuzz(x)). to eq 'buzz'
    end
  end

  it 'returns "fizzbuzz" when a multiple of both 3 and 5' do
    multiples = [15, 30]
    multiples.each do |x|
      expect(fizzbuzz(x)). to eq 'fizzbuzz'
    end
  end

  it 'returns the number itself when passed a number not divisible by 3 or 5' do
    numbers = [1, 2, 4, 7, 8, 11, 13, 14, 16, 17, 19]
    numbers.each do |x|
      expect(fizzbuzz(x)).to eq x
    end
  end

end