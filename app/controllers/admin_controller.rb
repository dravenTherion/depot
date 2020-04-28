class AdminController < ApplicationController
  def index
    @total_orders = Order.count
    @user = User.find_by(session[:id]);
  end
end
