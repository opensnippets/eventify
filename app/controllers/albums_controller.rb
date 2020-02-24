class AlbumsController < ApplicationController
	before_action :authenticate_user!
  def new
  	@venue = Venue.find(params[:venue_id].to_i)
  	@album = Album.new
  	@album.venue_images.build
  end

  def create
  	@venue = Venue.find(params[:venue_id].to_i)
  	@album = @venue.albums.new(album_params)


  	if @album.save!
  		redirect_to venues_path
  	else
  		redirect_to new_albums_venue_path
  	end
  end

  private

  def album_params
  	params.require(:album).permit(:album_name, {venue_images_attributes: [:venue_id, :album_id, :venue_profile]})
  end
end
