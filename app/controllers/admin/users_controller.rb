class Admin::UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]
  
  def index
    @users = User.all
  end

  def show
    render :json => {result: @user}
  end

  def update
  end

  
  def destroy
  end


  private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:email, :name, :password)
    end

end
