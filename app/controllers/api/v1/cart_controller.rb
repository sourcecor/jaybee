class Api::V1::CartController < Api::V1::ApplicationController
  def index
    @carts = current_user.carts
  end

  def create
    cart = new Cart()
    render 'response'
  end

  def update

  end

  def destroy

  end
end
