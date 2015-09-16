class EventsController < ApplicationController
include AdminsHelper
before_filter :check_if_admin, :except => [:index, :show]

	def index
		@all = Event.all
	end

	def show
		@event = Event.find(params[:id])
	end

	def new
		@event = Event.new
	end

	def create
		@event = Event.create(event_params)
		if @event.save
			redirect_to :back
		else
			redirect_to :root_path
		end
	end

	def edit
		@edit_event = Event.find(params[:id])
	end

	def update
		@event = Event.find(params[:id])
		if @event.update_attributes(event_params)
			redirect_to :admin_path
		else 
			render :edit
		end
	end

	def destroy
		@event = Event.find(params[:id])
		@event.destroy
		redirect_to admin_path
	end

end
