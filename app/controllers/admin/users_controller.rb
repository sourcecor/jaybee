class Admin::UsersController < Admin::ApplicationController
  include ApplicationHelper

  before_action :set_record, :only => [:show]

  def index
    @users_grid = initialize_grid(User)
  end


  def show

  end

  private

  def set_record
    @user = User.find(params[:id])
  end
  # strong params
  def user_params
    params.require(:user).permit(:id, :nickname, :email, :current_password, :password, :password_confirmation)
  end
end
