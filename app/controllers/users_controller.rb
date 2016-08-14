class UsersController < ApplicationController
  def index
  end

  def sign_in
    @user = User.where(email: params[:user][:email])
  end
end
