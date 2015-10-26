module ApplicationsHelper
	def get_application_tickets_count application
       application.tickets.count
    end

    def get_application_status_tickets_count status, application
        Ticket.where(status_id:status.id,application_id:application.id).count
    end
end
