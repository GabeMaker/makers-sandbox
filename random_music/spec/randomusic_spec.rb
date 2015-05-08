require 'randomusic'

describe Randomusic do

  it 'should return 5 page numbers from pre-1980' do
    random = Randomusic.new.tracks(1979)
    expect(random.count).to eq 5
    random.each do |x|
      expect(x >= 20 && x <= 455).to be true
    end
  end

  it 'should not repeat numbers' do
    random = Randomusic.new.tracks(1979)
    random.each_with_index do |x,i|
      next if i == 0
      test = random - [x]
      expect(test.include?(x)).to be false
    end
  end

  it 'should return 5 page numbers from 1980 - 1995' do
    random = Randomusic.new.tracks(1994)
    expect(random.count).to eq 5
    random.each do |x|
      expect(x >= 456 && x <= 740).to be true
    end
  end

end