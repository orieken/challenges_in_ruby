require 'spec_helper'

## custom matchers?
require 'set'
RSpec::Matchers.define :be_same_as do |expected_array|
  match do |actual_array|
    actual_array.to_set == expected_array.to_set
  end
end


describe 'Original example' do
  before(:all) do
    @expected = [1, 2, 3, 4, 5]
    @actual = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]
  end
  it { expect(@actual).to include(*@expected) }
end

describe 'Second example dynamic test for each example' do
  before(:each) do
    @expected = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]
    @actual = [1, 2, 3, 4, 5]
  end

  it 'has the array in it' do
    expect(@actual).to match_array(@expected)
  end

  it 'conveting them to sets' do
    expect(@actual.to_set).to eql @expected.to_set
  end

  it 'with custom matcher?' do
    expect(@actual).to be_same_as @expected
  end
end

describe 'Second example dynamic test for each example' do
  expected = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]
  actual = [1, 2, 3, 4, 5]

  expected.each do |item|
    #short form
    it { expect(actual).to include(item) }
    #long form
    it "long should include #{item}" do
      expect(actual).to include(item)
    end
  end
end
