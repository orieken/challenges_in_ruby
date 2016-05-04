require 'spec_helper'

class Person
  attr_accessor :first_name

end

describe Person do

  it { expect(subject).to respond_to(:first_name)}
  it { expect(subject).to respond_to(:first_name=)}

end