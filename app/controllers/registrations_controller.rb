class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create
    super
    if resource.recruiter == nil
    	resource.status = 3
    else
    	resource.status = 2
	end
    resource.save
  end

  def update
    super
  end
end 