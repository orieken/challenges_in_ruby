require 'spec_helper'

describe Person do
  it { expect(subject).to respond_to(:first_name)}
  it { expect(subject).to respond_to(:first_name=)}
end

describe 'Person' do
  before(:all) do
    @person = FactoryGirl.create(:person)
    @friend = FactoryGirl.create(:friend, person_id: @person.id)
  end
  after(:all) do
    @person.destroy
  end

  it { expect(@person).to be_valid }

  it 'has a friend' do
    expect(@person.friends.count).to eql 1
  end

  it 'thwgy has no friends' do
    thwgy = FactoryGirl.create(:person, first_name: 'Thwgy')
    people =[]
    their_friends =[]
    5.times do
      person = FactoryGirl.create(:person)
      people <<
      their_friends << FactoryGirl.create_list(:friend, 3, person_id: person.id)
    end

    is_it_thwgy = Person.includes(:friends).where(friends: {person_id: nil}).first
    expect(is_it_thwgy.first_name).to eql thwgy.first_name

  end
end