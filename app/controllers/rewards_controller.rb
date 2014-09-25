class RewardsController < ApplicationController
 	def index
 		@project = Project.find(params[:project_id])
 		@rewards = @project.rewards
  	end

    def show
     @reward = Reward.find(params[:reward_id])
     #@reward.donations.build(reward_params)	

    end

	def update  
		@reward = Reward.find(params[:id])
		@reward.update(reward_params)
	end 


private
  	def reward_params
  	 	params.require(:reward).permit( donations_attributes: [:amount, :user_id])
  	end
end