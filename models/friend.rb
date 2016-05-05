class Friend < ActiveRecord::Base
  belongs_to :person
  attr_accessible :first_name, :person_id
end