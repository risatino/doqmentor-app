class ActiveContractsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    if current_user && current_user.currently_carted.any?
      @active_contracts = current_user.currently_carted
    else
      flash[:warning] = "Please add contract to queue."
      redirect_to '/'
    end
  end

  def create
    ActiveContract.create(product_id: params[:product_id],
                         quantity: params[:quantity],
                         user_id: current_user.id,
                         status: "activated")

    flash[:success] = "Contract has been added to the queue."
    redirect_to '/active_contracts'
  end

  def destroy
    active_contract = ActiveContract.find(params[:id])
    active_contract.update(status: "removed")
    flash[:success] = "This contract has been removed from queue."
    redirect_to "/active_contracts"
  end
end
