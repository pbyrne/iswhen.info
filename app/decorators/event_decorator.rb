class EventDecorator < Draper::Decorator
  delegate :starts_sundown, :next_observance

  # Public: Whether the event has upcoming observances beyond the next
  #
  # Returns a Boolean
  def has_future_observances?
    source.upcoming_observances.count > 1
  end

  # Public: The name of the day of week of its next observance
  #
  # Returns a String
  def day_of_week
    return "" if next_observance.nil?
    next_observance.start_on.strftime("%A")
  end
end
