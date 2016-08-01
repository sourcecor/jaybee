class SitesController < ApplicationController

  def index
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
