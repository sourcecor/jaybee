class UsersController < ApplicationController
  before_action :authenticate_user!, :except => [:index, :new, :create]

  before_action :set_record, :only => [:edit, :update, :destroy]

  def edit
    #
  end

  def update

    if(user_params[:password].empty? && @user.update_without_password(user_params))
      flash[:notice] = '修改成功'
      redirect_to :action => 'index'
    elsif @user.update_attributes(user_params)
      flash[:notice] = '修改成功'
      redirect_to :action => 'index'
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    flash[:notice] = '資料已刪除'
    redirect_to :action => 'index'
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
