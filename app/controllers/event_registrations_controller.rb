class EventRegistrationsController < ApplicationController
  before_action :authenticate_user!, :find_event

  def create
  	@registration = @event.event_registrations.build(user_id: current_user.id)
  	@registration.save!
  	redirect_to root_path
  end

  def destroy
  end

  private

  def find_event
  	@event = Event.find(params[:event_id].to_i)
  end
end
