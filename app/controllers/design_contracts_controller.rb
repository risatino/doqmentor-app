class DesignContractsController < ApplicationController
  before_action :set_design_contract, only: [:show, :edit, :update, :destroy]

  def index
    @design_contracts = DesignContract.all
  end

  def new
    @design_contract = DesignContract.new
  end

  def create
    @design_contract = DesignContract.create(design_contract_params)
    
    if @design_contract.save
    redirect_to "/design-docs/#{@design_contract.id}"
    else
      render 'new.html.erb'
    end
    
  end

  def show
  end

  def edit
  end

  def update
    @design_contract.update(design_contract_params)
    redirect_to "/design-docs/#{@design_contract.id}"

  end

  def toggle
    @contract = DesignContract.find(params[:id])

    if @contract.active == false
      @contract.update(active: true)
    else
      @contract.update(active: false)
    end

    redirect_to "/design-docs/#{@contract.id}"

  end

  def destroy
    @design_contract.destroy
    redirect_to '/design-docs' 
  end

  private

  def set_design_contract
    @design_contract = DesignContract.find(params[:id])
  end

  # def document_params
  #   params.require(:document).permit(:signature)  
  # end

  def design_contract_params
    params.require(:design_contact).permit(:designer, :client, :gig_name, :title, :due_date, :specs, :billable_hours, :active, :signature)  
  end

  def cart_count
    @design_contracts = DesignContract.all
    p DesignContract.where(:active => true).count 
  end

end
