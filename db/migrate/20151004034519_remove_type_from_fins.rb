class RemoveTypeFromFins < ActiveRecord::Migration
  def change
    remove_column :fins, :type, :decimal
  end
end
