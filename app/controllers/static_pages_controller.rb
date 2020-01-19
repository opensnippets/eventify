class StaticPagesController < ApplicationController
	layout 'application'
  def home
  	 @events = Event.order('created_at DESC').limit(6)
  end

  def about
  end

  def contact
  end
end
