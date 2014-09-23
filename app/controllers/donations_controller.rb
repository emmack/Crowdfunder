class DonationsController < ApplicationController
	def new
		@donation = Donation.new
	end

	def create
		@donation = Donation.new()
		# @project.user = current_user
 		@user.donation.build	
 		if @donation.save
            redirect_to projects_path(@project), notice: 'Project created successfully!'        
        else
  		    render :new
        end
    end


end
