class Admin::DashboardController < ApplicationController
  
  http_basic_authenticate_with :name => ENV['secret_user'], :password => ENV['secret_password']

  def show
    @products = Product.all
    @category = Category.all
  end

end
