class SitesController < ApplicationController
  include SitesHelper

  def index
  end

  def products
    @cate_banners = Category.find(params[:category]) unless params[:category].nil?
    @menus = categoryMenu Category.c_parent(params[:category].to_i) unless params[:category].nil?
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
