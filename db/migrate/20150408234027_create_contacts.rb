class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :contact_name
      t.string :contact_email
      t.text :contact_description
      t.string :contact_status

      t.timestamps
    end
  end
end
