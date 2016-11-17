require 'spec_helper'

class Fib
  def calculate(number)
    return nil if number.nil?
    return nil if number.is_a? String
    return nil if number <= 0
    if [1,2].include?(number)
      return 1
    else
      calculate(number - 1) + calculate(number - 2)
    end
  end
end


describe Fib do
  it { expect(subject.calculate(nil)).to eql(nil) }
  it { expect(subject.calculate(-1)).to eql(nil) }
  it { expect(subject.calculate('a')).to eql(nil) }
  it { expect(subject.calculate(1)).to eql(1) }
  it { expect(subject.calculate(2)).to eql(1) }
  it { expect(subject.calculate(3)).to eql(2) }
  it { expect(subject.calculate(4)).to eql(3) }
  it { expect(subject.calculate(5)).to eql(5) }
end


# expect(f('a')).to equal(nil)
# expect(f(1)).to equal(1)
# expect(f(2)).to equal(1)
# expect(f(3)).to equal(2)
# expect(f(4)).to equal(3)