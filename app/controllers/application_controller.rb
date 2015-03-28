class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def load_order
    @order = Order.find_or_initialize_by(id: session[:order_id], user_id: session[:user_id])
    if @order.new_record?
      @order.status = "unsubmitted"
      @order.save!
      session[:order_id] = @order.id
    end
  end
end
