# -*- coding: utf-8 -*-
class UsersController < FrontController
  before_action :authenticate_user!
  before_action :get_user_admin
  #before_filter :authenticate_user!, only: [:index, :show]
  
  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save!
      redirect_to :action => "index"
    else
      raise "save fail".inspect        
    end
  end

  def project
    @project = Project.new
  end

  def create_project
    @project = Project.new(project_params)
    # USER_IDをセットする
    @project.user_id = @me.id

    if @project.save!
      params[:project_images][:image].each do |a|
        @project_images = @project.project_images.create!(:image => a, :project_id => @project.id)
      end
      redirect_to :action => "index"
    end
  end

  def upload
    @project = Project.new
    @project_images = @project.project_images.build
  end


  def edit
  end

  
  def update
  end

  
  def destroy
  end

  def sign_in
    raise 'aaaa'.inspect
  end


  private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:email, :name, :password)
    end

    def project_params
      params.require(:project).permit(:project_type_id, :title, :summary, project_images_attributes:[:id,:project_id , :images])
    end

    def get_user_admin
      if user_signed_in?
        @me = current_user
      end
      @me
    end

end
