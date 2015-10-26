module EngineersHelper

	def get_engineer_tickets_count engineer
		engineer.tickets.count
	end
    def get_engineer_status_tickets_count status, engineer
        Ticket.where(status_id:status.id,engineer_id:engineer.id).count
    end
end
