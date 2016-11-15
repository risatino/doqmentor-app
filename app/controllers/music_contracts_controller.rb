class MusicContractsController < ApplicationController
  before_action :set_music_contract, only: [:show, :edit, :update, :destroy]

  def index
    @music_contracts = MusicContract.all
  end

  def new
    @music_contract = MusicContract.new
  end

  def create
    @music_contract = MusicContract.create(music_contract_params)
    
    if @music_contract.save
    redirect_to "/music-docs/#{@music_contract.id}"
    else
      render 'new.html.erb'
    end
    
  end

  def show
  end

  def edit
  end

  def update
    @music_contract.update(music_contract_params)
    redirect_to "/music-docs/#{@music_contract.id}"  
  end

  def toggle
    @contract = MusicContract.find(params[:id])

    if @contract.active == false
      @contract.update(active: true)
    else
      @contract.update(active: false)
    end

    redirect_to "/music-docs/#{@contract.id}"

  end

  def destroy
    @music_contract.destroy
    redirect_to '/music-docs' 
  end

  private

  def set_music_contract
    @music_contract = MusicContract.find(params[:id])
  end

  def music_contract_params
    params.permit(:musician, :client, :gig_name, :title, :event_venue, :notes, :due_date, :billable_hours, :active, :signature)  
  end

  def cart_count
    @music_contracts = MusicContract.all
    p MusicContract.where(:active => true).count  
  end

end
