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

  # Public: Yield the upcoming observance, decorated, if one
  #
  # Examples:
  #
  # event.with_upcoming_observance do |observance|
  #   puts observance.day_of_week
  # end
  def with_upcoming_observance
    upcoming_observances.first.tap do |observance|
      yield observance.decorate unless observance.nil?
    end
  end
end
