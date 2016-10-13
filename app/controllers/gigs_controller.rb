class GigsController < ApplicationController
  before_action :authenticate_user!

  def create
    @gig = Gig.create(client_id: params[:client_id],
                      document_id: params[:document_id])

    flash[:success] = 'New Gig Created!'
    redirect_to "/gigs/#{@gig.id}"
  end

  def show
    @gig = Gig.find(params[:id])
    redirect_to '/' if @gig.user_id != current_user.id
  end
end
