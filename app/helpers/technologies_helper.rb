module TechnologiesHelper

	def get_technology_applications_count technology
         technology.applications.count
    end
    def get_technology_tickets_count technology
    	sum=0
    	technology.applications.each do |application|
    		sum+=application.tickets.count
    	end
    	return sum
    end
    def get_technology_status_tickets_count status,technology
    	sum=0
     	technology.applications.each do |application|
    		sum+=Ticket.where(status_id:status.id,application_id:application.id).count
    	end 
    	return sum  
    end	
end
