class UsersController < ApplicationController
    skip_before_filter :require_login, :only => [:index, :new, :create, :activate]

def activate
  if (@user = User.load_from_activation_token(params[:id]))
    @user.activate!
    redirect_to(new_session_path, :notice => 'User was successfully activated.')
  else
    not_authenticated
  end
end

 def show
        @user = User.find(params[:id])
       
    end

    def new
        @user = User.new
    end

    def edit
        @user = User.find(params[:id])
    end

    def create 
        @user = User.new(user_params)
        if @user.save
            redirect_to( root_path, notice: 'User was successfully created')       
            else
            render :new
        end
    end

    def update
        @user = User.find(params[:id])
        if @user.update_attributes(user_params)
            redirect_to user_path(@user)
        else
            render :edit
        end
    end

    private
  	def user_params
  	 	params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  	end
end

