class RsvpsController < ApplicationController
	include AdminsHelper
	before_filter :check_if_user

	def index
		@events = Event.all
		@event = Event.find(params[:id])
		@rsvps = Rsvp.where(:event_id => @event.id)

	end

	def create
	  @rsvp = Rsvp.create(rsvp_params)
  		if @rsvp.save
  		redirect_to :back
  		else redirect_to event_index_path
  		end
	end

	private
		def rsvp_params
			params.require(:rsvp).permit(:user_id, :event_id, :volunteer)
		end


end
