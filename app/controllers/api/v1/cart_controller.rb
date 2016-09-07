class Api::V1::CartController < Api::V1::ApplicationController
  def index
    @carts = current_user.carts
  end

  def create
  end

  def update
  end

  def destroy
  end
end
