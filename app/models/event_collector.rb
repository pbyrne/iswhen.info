# Collect upcoming events
class EventCollector
  # Public: The list of upcoming events
  #
  # Returns an Array of Event instances
  def events
    Event.joins(:observances).where("observances.start_on >= ?", Date.today).uniq
  end
end
