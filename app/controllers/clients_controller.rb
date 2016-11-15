class ClientsController < ApplicationController
  before_action :authenticate_user!
    
  def index
    @clients = Client.all
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.create(name: params[:name],
                            phone: params[:phone],
                            user_id: current_user.id,
                            email: params[:email],
                            address: params[:address],
                            notes: params[:notes])

    if @client.save
      flash[:success] = "Your client has been created"
      redirect_to "/clients/#{@client.id}"
    else
      render 'new.html.erb'
    end
  end

  def show
    @client = Client.find(params[:id])
  end

  def edit
    @client = Client.find(params[:id])
  end

  def update

    @client = Client.find(params[:id])
    @client.update(name: params[:name],
                  phone: params[:phone],
                  user_id: current_user.id,
                  email: params[:email],
                  address: params[:address],
                  notes: params[:notes])

    flash[:success] = "Your client has been updated."
    redirect_to "/clients/#{@client.id}"
  end

  def destroy
    @client = Client.find(params[:id])
    @client.destroy

    flash[:warning] = "Your client is deleted."
    redirect_to '/clients'
  end

end
