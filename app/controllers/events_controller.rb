class EventsController < ApplicationController
include AdminsHelper
before_filter :check_if_admin, :except => [:index, :show]

	def index
		@events = Event.all
		@rsvp = Rsvp.new
		# @event = Event.find(params[:id])
		# @rsvps = Rsvp.where(:event_id => @event.id)
	end

	def show
		@event = Event.find(params[:id])
	end

	def new
		@events = Event.all
	end

	def new_event
		@event = Event.new
	end

	def create
		@event = Event.create(event_params)
		if @event.save
			redirect_to :back
		else
			redirect_to admin_path
		end
	end

	def edit
		@event = Event.find(params[:id])
	end

	def update
		@event = Event.find(params[:id])
		if @event.update_attributes(event_params)
			redirect_to event_path
		else 
			render :edit
		end
	end

	def destroy
		@event = Event.find(params[:id])
		@event.destroy
		redirect_to event_path
	end

	    private

    def event_params
      params.require(:event).permit(:user_id, :date, :time, :location, :title, :body, :fee, :course)
    end


end
