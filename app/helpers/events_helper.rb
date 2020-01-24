module EventsHelper

	def dateformat(date)
		#date.strftime("%d - %m - %Y")
	end

	def total_registered_seats(event)
		total_registered_seats = event.event_registrations.count
		total_seats = event.total_seats
		return total_seats - total_registered_seats
	end
	def find_user_registered_for_this_event(event)
		registered_event = EventRegistration.where({user_id: current_user.id, event_id: event.id})
		return registered_event
	end
end
