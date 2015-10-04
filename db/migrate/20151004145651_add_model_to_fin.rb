class AddModelToFin < ActiveRecord::Migration
  def change
    add_column :fins, :model, :string
  end
end
