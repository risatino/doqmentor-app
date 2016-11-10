class LegalContractsController < ApplicationController
  before_action :authenticate_user!

  def index

  end

  def new
    @legal_contract = LegalContract.new
  end

  def create
    @legal_contract = LegalContract.create(videographer: params[:videographer],
                                           hiring_attorney: params[:hiring_attorney],
                                           firm: params[:firm],
                                           recording_venue: params[:recording_venue],
                                           due_date: params[:due_date],
                                           instructions: params[:instructions],
                                           witness: params[:witness],
                                           ticket_name: params[:ticket_name],
                                           media_format: params[:media_format],
                                           billable_hours: params[:billable_hours])
    
    if @legal_contract.save
      flash[:success] = "Your document has been created"
      redirect_to "/legal-docs/#{@legal_contract.id}"
    else
      render 'new.html.erb'
    end
    
  end

  def show
    @legal_contract = LegalContract.find(params[:id])
  end

  def edit
    @legal_contract = LegalContract.find(params[:id])
  end

  def update
    @legal_contract = LegalContract.find(params[:id])
    @legal_contract.update(videographer: params[:videographer],
                           hiring_attorney: params[:hiring_attorney],
                           firm: params[:firm],
                           recording_venue: params[:recording_venue],
                           due_date: params[:due_date],
                           instructions: params[:instructions],
                           witness: params[:witness],
                           ticket_name: params[:ticket_name],
                           media_format: params[:media_format],
                           billable_hours: params[:billable_hours])

    flash[:success] = "Your contract has been updated."
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
    @legal_contract = LegalContract.find(params[:id])
    @legal_contract.destroy
    
    flash[:warning] = "Your contract has been deleted."
    redirect_to '/legal-docs' 
  end
end
