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
    # FIXME For some reason `includes(:upcoming_observances) causes the event to come out in completely schizophrenic order. returning to less-performant code until I figure this out
    @events ||= Event.joins(:observances).where("observances.start_on >= ?", Date.current).uniq
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
