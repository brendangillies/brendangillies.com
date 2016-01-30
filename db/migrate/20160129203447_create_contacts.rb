class CreateContacts < ActiveRecord::Migration
  def up
    create_table :contacts do |t|
      t.column "first_name", :string, null: false
      t.string "last_name", null: false
      t.string "email", null: false
      t.string "phone"
      t.string "company"
      t.text "message"
      t.timestamps null: false
    end
  end
  
  def down
    drop_table :contacts
  end
  
  
end
