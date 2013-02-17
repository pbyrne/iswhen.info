class EventDecorator < Draper::Decorator
  delegate(
    :next_observance,
    :starts_sundown,
    :upcoming_observances,
  )

  # Public: The name of the event
  #
  # Returns a String
  def name
    source.longname
  end
end
