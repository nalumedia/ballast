class CreateFins < ActiveRecord::Migration
  def change
    create_table :fins do |t|
      t.string :name
      t.string :type
      t.string :base
      t.string :height
      t.text :description
      t.decimal :customer_price
      t.decimal :ballast_price

      t.timestamps
    end
  end
end
