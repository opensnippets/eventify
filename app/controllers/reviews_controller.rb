class ReviewsController < ApplicationController
  before_action :authenticate_user!

  def create
    @venue = Venue.find(params[:venue_id])
    @venue.reviews.create(body: params[:body], rating: params[:rating])
    redirect_to venue_path(@venue)
  end

end

