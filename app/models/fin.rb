class Fin < ActiveRecord::Base

has_attached_file :image, :styles => { :medium => "1100x600>", :thumb => "444x240>" }
        validates :image, presence: true
        validates_attachment :image, content_type: { content_type: /\Aimage\/.*\Z/ }

end
