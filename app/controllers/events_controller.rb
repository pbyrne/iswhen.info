class EventsController < ApplicationController
  # GET /events
  # GET /events.json
  def index
    @events = Event.order_by_upcoming

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @events }
    end
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @event = Event.with_subdomain(request.subdomain).first
    @events = Event.all_but(@event)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @event }
    end
  end
end
