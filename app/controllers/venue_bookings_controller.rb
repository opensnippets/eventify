class VenueBookingsController < ApplicationController
  before_action :authenticate_user!

  def create
    @user = current_user
    @user.venue_registrations.create(function_date: params[:function_date], venue_id: params[:venue_id].to_i, phone_number: params[:phone_number], name: params[:name])
    redirect_to venues_path
  end

  private

  def eve_params
    params.require(:venue_registration).permit(:function_date, :venue_id, :phone_number, :name)
  end

end
