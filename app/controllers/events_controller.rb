class EventsController < ApplicationController

def index
	@all = Event.all.order('date ASC')
	@classes = Event.where('class')
	@events = Event.where('!class')
end

end
