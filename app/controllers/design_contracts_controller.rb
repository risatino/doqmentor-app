class DesignContractsController < ApplicationController
  before_action :authenticate_user!

  def index
    @design_contracts = DesignContract.all
  end

  def new
    @design_contract = DesignContract.new
  end

  def create
    @design_contract = DesignContract.create(designer: params[:designer],
                                             client: params[:client],
                                             gig_name: params[:gig_name],
                                             title: params[:title],
                                             due_date: params[:due_date],
                                             specs: params[:specs],
                                             billable_hours: params[:billable_hours],
                                             freelance_signature: params[:freelance_signature],
                                             client_signature: params[:client_signature])
    
    if @design_contract.save
      flash[:success] = "Your document has been created"
      redirect_to "/design-docs/#{@design_contract.id}"
    else
      render 'new.html.erb'
    end
    
  end

  def show
    @design_contract = DesignContract.find(params[:id])
  end

  def edit
    @design_contract = DesignContract.find(params[:id])
  end

  def update
    @design_contract = DesignContract.find(params[:id])
    @design_contract.update(designer: params[:designer],
                            client: params[:client],
                            gig_name: params[:gig_name],
                            title: params[:title],
                            due_date: params[:due_date],
                            specs: params[:specs], 
                            billable_hours: params[:billable_hours],
                            freelance_signature: params[:freelance_signature],
                            client_signature: params[:client_signature])

    flash[:success] = "Your contract has been updated."
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
    @design_contract = DesignContract.find(params[:id])
    @design_contract.destroy
    
    flash[:warning] = "Your contract has been deleted."
    redirect_to '/design-docs' 
  end

  def document_params
    params.require(:document).permit(:signature)  
  end

end
