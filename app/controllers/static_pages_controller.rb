class StaticPagesController < ApplicationController
	layout 'application'
  def home
  	 @venues = Venue.order('created_at DESC')
  end

  def about
  end

  def contact
  end
end
