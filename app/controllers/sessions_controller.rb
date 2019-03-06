class SessionsController < ApplicationController
before_action :save_login_state, :only => [:login, :login_attempt]
  def login
    #Login Form
  end
  def login_attempt
    authorized_user = User.authenticate(params[:username_or_email],params[:login_password])
    if authorized_user
      session[:user_id] = authorized_user.id
      session[:role_id] = authorized_user.role_id
      flash[:notice] = "Wow Welcome again, you logged in as #{authorized_user.name}"
      if authorized_user.role_id == 1
        redirect_to dashboard_admin_path
      elsif authorized_user.role_id == 2
        redirect_to dashboard_staff_path
      elsif authorized_user.role_id == 3
        redirect_to dashboard_student_path
      end
      
    else
      flash[:notice] = "Invalid Username or Password"
      # flash[:color]= "invalid"
      render "login"	
    end
  end
    def logout
      session[:user_id] = nil
      redirect_to :action => 'login'
    end
    def home
      @user = User.find session[:user_id] 
    end
end
