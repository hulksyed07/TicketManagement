module ApplicationHelper

  def get_technology_name id
     Technology.find(id).name
  end 

  def get_engineer_name id
      Engineer.find(id).name
  end
  def get_application_name id
      Application.find(id).name
  end
    def get_status_name id
      Status.find(id).name
  end
  def get_tickets_count
      Ticket.all.count
  end
    def get_engineers_count
      Engineer.all.count
  end
    def get_applications_count
      Application.all.count
  end
    def get_statuses_count
      Status.all.count
  end
    def get_technologies_count
      Technology.all.count
  end

        
end
