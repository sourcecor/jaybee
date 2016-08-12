class SitesController < ApplicationController
  include SitesHelper

  def index
  end

  def products

    cate_id = params[:category]
    keyword = params[:keyword]

    @cate_banners = Category.find(cate_id) unless cate_id.nil?
    @c_bread = Category.c_bread(cate_id) unless cate_id.nil?
    @menus = categoryMenu Category.c_parent(cate_id) unless cate_id.nil?

    @products = Product.keyword_with(keyword).cates_with(cate_id).order(id: :desc).distinct.page params[:page]

    puts @products
  end

  def show
    render 'detail', data: Product.find(params[:id])
  end

  # static page
  def about
    render 'sites/about/about'
  end

  def copyright
    render 'sites/about/copyright'
  end

  def notice
    render 'sites/about/notice'
  end

  def qa
    render 'sites/about/qa'
  end

  def store
    render 'sites/about/store'
  end
end
