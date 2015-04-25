class CreateDelivertos < ActiveRecord::Migration
  def change
    create_table :delivertos do |t|
      t.string :deliverto_street
      t.string :deliverto_city
      t.string :delivertto_state
      t.string :deliverto_zip
      t.string :deliverto_country
      t.integer :purchase_id
      t.text :deliverto_instructions

      t.timestamps
    end
  end
end
