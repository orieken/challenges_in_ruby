class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.string :first_name
      t.integer :person_id
      t.timestamps
    end
  end
end
