class Status < ActiveRecord::Base
	has_many :tickets, dependent: :destroy
end
