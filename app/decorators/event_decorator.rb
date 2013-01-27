class EventDecorator < Draper::Decorator
  delegate :starts_sundown, :next_observance

  # Public: Whether the event has upcoming observances
  #
  # Returns a Boolean
  def has_upcoming_observances?
    source.upcoming_observances.any?
  end

  # Public: The name of the day of week of its next observance
  #
  # Returns a String
  def day_of_week
    return "" if next_observance.nil?
    next_observance.start_on.strftime("%A")
  end
end
