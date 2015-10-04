class AddAttachmentImageToFins < ActiveRecord::Migration
  def self.up
    change_table :fins do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :fins, :image
  end
end
