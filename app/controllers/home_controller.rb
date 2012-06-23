class HomeController < ApplicationController
  def index
    @users = User.all
    @games = Product.order("created_at DESC").limit(10)
    @consoles = Product.order("created_at DESC").limit(10)
    
  end
end
