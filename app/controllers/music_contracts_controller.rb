class MusicContractsController < ApplicationController
  before_action :authenticate_user!

  def index
    @music_contracts = MusicContract.all
  end

  def new
    @music_contract = DesignContract.new
  end

  def create
    @design_contract = DesignContract.create(designer: params[:designer],
                                             client: params[:client],
                                             gig_id: params[:gig_id],
                                             title: params[:title],
                                             due_date: params[:due_date],
                                             specs: params[:specs])
    
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
                            gig_id: params[:gig_id],
                            title: params[:title],
                            due_date: params[:due_date],
                            specs: params[:specs])

    flash[:success] = "Your contract has been updated."
    redirect_to "/design-docs/#{@design_contract.id}"  
  end

  def destroy
    @design_contract = DesignContract.find(params[:id])
    @design_contract.destroy
    
    flash[:warning] = "Your contract has been deleted."
    redirect_to '/design-docs' 
  end
end
