require 'spec_helper'

describe Fizzbuzz do
  it 'has a version number' do
    expect(Fizzbuzz::VERSION).not_to be nil
  end

  context '.fizzbuzz' do
    it "正常系" do
      expect(%w(FizzBuzz 1 2 Fizz 4 Buzz Fizz 7 8 Fizz Buzz 11 Fizz 13 14 FizzBuzz)).to eq(Fizzbuzz.fizzbuzz("15"))
    end

    it "数値以外の入力" do
      expect { Fizzbuzz.fizzbuzz("a") }.to raise_error(ArgumentError)
    end
  end
end
