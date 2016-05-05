class Person < ActiveRecord::Base
  has_many :friends, dependent: :destroy
  attr_accessible :first_name
end
