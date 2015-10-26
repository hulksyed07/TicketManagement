class Ticket < ActiveRecord::Base
	belongs_to :engineer
	belongs_to :application
	belongs_to :status
	has_one :description
	# belongs_to :technology, :through => :application

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |ticket|
        csv << ticket.attributes.values_at(*column_names)
      end
    end
  end
end
