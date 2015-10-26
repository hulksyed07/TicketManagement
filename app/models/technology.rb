class Technology < ActiveRecord::Base
	 has_many :applications, dependent: :destroy
end
