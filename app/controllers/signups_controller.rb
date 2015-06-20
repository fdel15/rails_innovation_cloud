class SignupsController < ApplicationController
    
    def new
      @signup = Signup.new
    end
    
    def create
      @user = Signup.create(signup_params)
      redirect_to @user
    end
    
    def show
     @user = Signup.find(params[:id])
    end
    
    
    private
    
    def signup_params
      params.require(:signup).permit(:email)
    end

end
