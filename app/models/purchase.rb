class Purchase < ActiveRecord::Base
		has_one :deliverto
		def to_param
	 	uuid
		end
end
