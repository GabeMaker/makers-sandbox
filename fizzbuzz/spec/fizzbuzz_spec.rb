require 'fizzbuzz'

describe 'fizzbuzz' do

  it 'returns "fizz" when passed 3' do
    expect(fizzbuzz(3)). to eq 'fizz'
  end

  it 'returns "buzz" when passed 5' do
    expect(fizzbuzz(5)). to eq 'buzz'
  end

  it 'returns the number when passed a number less than 20 and not divisible by 3 or 5' do
    numbers = [1,2,4,7,8,10,11,13,14,16,17,19]
    numbers.each do |x|
      expect(fizzbuzz(x)).to eq x
    end
  end
end