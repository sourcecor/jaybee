class Api::V1::ProductController < Api::V1::ApplicationController

  def index
    @product = Product.find(params[:id])
  end

end
