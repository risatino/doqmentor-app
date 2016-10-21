class MusicContractsController < ApplicationController
  before_action :authenticate_user!

  def index
    @music_contracts = MusicContract.all
  end

  def new
    @music_contract = MusicContract.new
  end

  def create
    @music_contract = MusicContract.create(musician: params[:musician],
                                           client: params[:client],
                                           gig_name: params[:gig_name],
                                           title: params[:title],
                                           event_venue: params[:event_venue],
                                           notes: params[:notes],
                                           due_date: params[:due_date])
    
    if @music_contract.save
      flash[:success] = "Your document has been created"
      redirect_to "/music-docs/#{@music_contract.id}"
    else
      render 'new.html.erb'
    end
    
  end

  def show
    @music_contract = MusicContract.find(params[:id])
  end

  def edit
    @music_contract = MusicContract.find(params[:id])
  end

  def update
    @music_contract = MusicContract.find(params[:id])
    @music_contract.update(musician: params[:musician],
                           client: params[:client],
                           gig_name: params[:gig_name],
                           title: params[:title],
                           event_venue: params[:event_venue],
                           notes: params[:notes],
                           due_date: params[:due_date])


    flash[:success] = "Your contract has been updated."
    redirect_to "/music-docs/#{@music_contract.id}"  
  end

  def destroy
    @music_contract = MusicContract.find(params[:id])
    @music_contract.destroy
    
    flash[:warning] = "Your contract has been deleted."
    redirect_to '/music-docs' 
  end
end
