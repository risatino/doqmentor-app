class GigsController < ApplicationController
  before_action :authenticate_user!

  def create
    @active_contracts = current_user.currently_carted
    @gig = Gig.create(user_id: current_user.id)
    @active_contracts.update_all(gig_id: @gig.id, status: "activated")
    @gig.calculate_total_hours

    flash[:success] = 'New Gig Created!'
    redirect_to "/gigs/#{@gig.id}"
  end

  def show
    @gig = Gig.find(params[:id])
    redirect_to '/' if @gig.user_id != current_user.id
  end

end
