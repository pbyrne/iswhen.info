# Collect upcoming events
class EventCollector
  attr_accessor :events

  # Public: Instantiate an EventCollector without the given event
  #
  # event - An Event instance to exclude
  #
  # Returns an instance of EventCollector
  def self.except(event)
    new.tap do |collecter|
      collecter.events -= [event]
    end
  end

  # Public: The list of upcoming events
  #
  # Returns an Array of Event instances
  def events
    # FIXME this logic belongs in the Event model. stop leaking AR outside of the model
    @events ||= Event.includes(:upcoming_observances).where("observances.start_on >= ?", Date.current).references(:observances)
  end

  # Public: The list of upcoming events, sorted by next date
  #
  # Returns an Array of Event instances
  def sorted_events
    events.sort
  end

  # Public: Iterate over the sorted events
  #
  # &block - The block to iterate, each event yielded to it
  def each(&block)
    sorted_events.each do |event|
      yield event
    end
  end
end
