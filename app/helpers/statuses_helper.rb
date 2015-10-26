module StatusesHelper

	def get_status_tickets_count status
		status.tickets.count
	end
	def get_status_technologies_count status
		status.tickets.count
	end
	def get_status_applications_count status 
		sum=0
		status.tickets.each do |ticket|
			sum+=Application.where(id:ticket.application_id).distinct.count
		end
		return sum
	end
	def get_status_engineers_count status
		sum=0
		status.tickets.each do |ticket|
			sum+=Engineer.where(id:ticket.engineer_id).distinct.count
		end
		return sum
	end
end
