class AddDelivertoStatusToDeliverto < ActiveRecord::Migration
  def change
    add_column :delivertos, :deliverto_status, :string
  end
end
