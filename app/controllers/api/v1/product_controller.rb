class Api::V1::ProductController < Api::V1::ApplicationController

  def show
    @product = Product.find(params[:id])
  end

end
