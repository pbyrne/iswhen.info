class EventsController < ApplicationController
  def index
    @collection = EventCollector.new
  end

  def show
    @event = Event.for_subdomain(request.subdomain)
    @collection = EventCollector.new
  end
end
