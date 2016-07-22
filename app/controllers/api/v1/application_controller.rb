class Api::V1::ApplicationController < ActionController::Base
  # http_basic_authenticate_with :name => "myfinance", :password => "credit123"
  skip_before_filter :authenticate_user! # 移除認證
  skip_before_filter :verify_authenticity_token

end
