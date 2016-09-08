class Api::V1::CartController < Api::V1::ApplicationController
  def index
    @carts = current_user.carts
  end

  def create
    user_carts = current_user.carts.find_by_itemcode(params['itemcode'])
    if !user_carts
      current_user.carts.build(itemcode: params['itemcode'], qty: params['qty'], product_id: params['product_id'])
      current_user.save
    else
      user_carts.qty = user_carts.qty + params['qty'].to_i
      user_carts.save
    end

    render 'response'
  end

  def update

  end

  def destroy
    user_carts = current_user.carts.find_by_itemcode(params['itemcode'])
    user_carts.destroy
    response 'response'
  end

  def clear
    current_user.carts.delete_all
    redirect_to sites_path
  end
end
