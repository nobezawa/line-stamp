class Api::UsersController < Api::BaseController
  before_action :set_user, only: [:show, :update, :destroy]
  
  def index
    @users = User.all
    render :json => {result: @users}
  end

  def show
    render :json => {result: @user}
  end

  def create
    @user = User.new(user_params)
    if @user.save!
      render :json => {result: User.all}
    else
      
    end
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
