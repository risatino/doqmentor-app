class LeadsController < ApplicationController
  before_action :set_lead, only: [:show, :edit, :update, :destroy]

  def index
    @leads = Lead.all
  end

  def show
  end

  def new
    @lead = Lead.new
  end

  def edit
  end

  def create
    @lead = Lead.new(lead_params)
    if @lead.save
      redirect_to "/leads/#{@lead.id}"
    else
      render 'new.html.erb'    
    end
  end

  def update
    @lead.update(lead_params)
    redirect_to "/leads/#{@lead.id}"
      
  end

  def destroy
    @lead.destroy
    redirect_to '/leads'
  end

  private
 
    def set_lead
      @lead = Lead.find(params[:id])
    end

    def lead_params
      params.require(:lead).permit(:firstname, :lastname, :email, :phone, :company, :logo)
    end
end
