class EventLoader
  attr_accessor :name
  attr_accessor :shortname
  attr_accessor :longname
  attr_accessor :starts_sundown
  attr_accessor :event

  # Public: Initialize an instance of EventLoader
  #
  # name - Name of the event
  # shortname - Unique short name (subdomain) of the event
  # longname - Longer description of the event
  # starts_sundown - Boolean, whether the event starts at sundown of the given day
  def initialize(name=nil, shortname=nil, longname=nil, starts_sundown=false)
    self.name = name
    self.shortname = shortname
    self.longname = longname
    self.starts_sundown = starts_sundown
  end

  # Public: The event associated with the EventLoader
  #
  # Will create the event, if necessary
  #
  # Returns an instance of Event
  def event
    @event ||= Event.where(name: name, shortname: shortname, longname: longname, starts_sundown: starts_sundown).first
    @event ||= Event.create!(name: name, shortname: shortname, longname: longname, starts_sundown: starts_sundown)
  end

  # Public: Add an observance to the event
  def add start_on, end_on=nil
    Observance.create!(event_id: event.id, start_on: start_on, end_on: end_on)
  end
end
