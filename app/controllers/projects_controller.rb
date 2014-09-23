class ProjectsController < ApplicationController
	before_filter :ensure_logged_in, only: [:create, :destroy]

	def index
		@projects = Project.all
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new(project_params)
		# @project.user = current_user
 		@project.rewards.build	
 		if @project.save
            redirect_to projects_path(@project), notice: 'Project created successfully!'        
        else
  		    render :new
        end
    end


	def edit
        @project = Project.find(params[:id])
    end

    def show
        @project = Project.find(params[:id])
        @project.rewards.build
    end

	def update 
		@project = Project.find(params[:id])
		if @project.update_attributes(project_params)
			redirect_to project_path(@project)
		else
			render :edit
		end
	end 
	def destroy
        @project = Project.find(params[:id])
        @project.destroy
        redirect_to root_path
    end


	private
  	def project_params
  	 	params.require(:project).permit( :name, :description, :goal, :start_date, :end_date, rewards_attributes: [:description, :amount, :done, :_destroy])
  	end
end


