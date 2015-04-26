class Purchase < ActiveRecord::Base
		has_many :delivertos
		def to_param
	 	uuid
		end
end
