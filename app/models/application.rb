class Application < ActiveRecord::Base
	belongs_to :technology
	has_many :tickets, dependent: :destroy
end
