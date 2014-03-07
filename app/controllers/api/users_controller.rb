class Api::UsersController < Api::BaseController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  
  def index
    @users = User.all
    render :json => {result: @users}
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render :json => User.all
    else
        
    end
  end


  def edit
  end

  
  def update
  end

  
  def destroy
  end


  private

    def set_user
      @shop = Shop.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:email, :password)
    end

  
end