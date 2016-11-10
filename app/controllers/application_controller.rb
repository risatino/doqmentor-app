class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :set_contracts

  def set_contracts
    @design_contracts = DesignContract.all
    @legal_contracts = LegalContract.all
    @music_contracts = MusicContract.all
  end


  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

private

  def authenticate_admin!
    redirect_to '/' unless current_user && current_user.admin
  end

  def authenticate_user!
    redirect_to '/login' unless current_user
  end

  def calculate_cart_count
    if current_user
      @cart_count = current_user.currently_carted.count
    else
      @cart_count = 0
    end
  end
end
