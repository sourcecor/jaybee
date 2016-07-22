class Api::V1::ProductController < Api::V1::ApplicationController

  def index
    @product = Product.find(params[:id])
  end

  def color
    @product = Product.find(params[:id])
  end

  def size
    @sub_product_color = SubProductColor.find(params[:id])
  end
end
