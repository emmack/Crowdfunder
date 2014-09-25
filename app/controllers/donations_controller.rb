class DonationsController < ApplicationController

    before_filter :ensure_logged_in, only: [:create, :destroy]

	def new
	   @reward = Reward.find(params[:reward_id])
       @project = Project.find(params[:project_id])


   	end

	def create
    @reward = Reward.find(params[:reward_id])
	 @donation = @reward.donations.build(donation_params)
 		if @donation.save
            redirect_to projects_path(@project), notice: 'Project created successfully!'        
        else
  		    render :new
        end
    end

    private 

  def donation_params
        params.require(:donation).permit(:reward_id, :user_id, :amount)
    end


end
