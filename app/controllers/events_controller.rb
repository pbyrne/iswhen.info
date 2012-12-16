class EventsController < ApplicationController
  def index
    @collection = EventCollector.new
  end

  def show
  end
end
