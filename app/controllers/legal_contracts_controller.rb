class LegalContractsController < ApplicationController
  before_action :set_legal_contract, only: [:show, :edit, :update, :destroy]

  def index
    @legal_contracts = LegalContract.all
  end

  def new
    @legal_contract = LegalContract.new
  end

  def create
    @legal_contract = LegalContract.create(legal_contract_params)
    
    if @legal_contract.save
      redirect_to "/legal-docs/#{@legal_contract.id}"
    else
      render 'new.html.erb'
    end
    
  end

  def show
  end

  def edit
  end

  def update
    @legal_contract.update(legal_contract_params)
    redirect_to "/legal-docs/#{@legal_contract.id}"  
  end

  def toggle
    @contract = LegalContract.find(params[:id])

    if @contract.active == false
      @contract.update(active: true)
    else
      @contract.update(active: false)
    end

    redirect_to "/legal-docs/#{@contract.id}"

  end

  def destroy
    @legal_contract.destroy
    redirect_to '/legal-docs' 
  end

  private

  def set_legal_contract
    @legal_contract = LegalContract.find(params[:id])
  end

  def legal_contract_params
    params.permit(:videographer, :hiring_attorney, :firm, :recording_venue, :due_date, :instructions, :witness, :ticket_name, :media_format, :billable_hours, :signature)
  end

  def cart_count
    @legal_contracts = LegalContract.all
    p LegalContract.where(:active => true).count
  end
end
