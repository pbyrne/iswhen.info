# Collect upcoming events
class EventCollector
  attr_accessor :events

  # Public: The list of upcoming events
  #
  # Returns an Array of Event instances
  def events
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
