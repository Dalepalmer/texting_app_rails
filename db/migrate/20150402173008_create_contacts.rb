class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.integer :number
      t.integer :user_id
      t.string :name
    end
  end
end
