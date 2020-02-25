class VenuesController < ApplicationController
	before_action :venue_params, only: [:create]
	before_action :authenticate_user!, except: [:show]

	def index
    @venues = current_user.venues.all
	end

	def show
		@venue = Venue.find(params[:id])
    @venue_reviews = @venue.reviews
	end

	def new
		@venue = Venue.new
		@venue.build_facility
		@venue.build_venue_address
    @venue.foods.build
	end

	def create
		@venue = Venue.new(venue_params)
		@venue.user_id = current_user.id
		#@venue.build_facility(venue_params)
		if @venue.save!
			redirect_to venues_path
		else
			redirect_to new_venues_path
		end
	end

	private

	def venue_params
		params.require(:venue).permit(:user_id, :name, :description, facility_attributes: [:venue_id, :ac, :pool, :generator, :wifi, :projector, :drinks, :microphone], venue_address_attributes: [:venue_id, :address, :country, :state, :contact_number, :pincode], foods_attributes: [:price, :food_type, :venue_id])
	end
end
