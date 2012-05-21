class EventsController < ApplicationController
  # GET /events
  # GET /events.json
  def index
    @catalog = Catalog.new Event.with_observances

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @events }
    end
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @event = Event.with_subdomain(request.subdomain).first
    @catalog = Catalog.new Event.with_observances, @event

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @event }
    end
  end
end
