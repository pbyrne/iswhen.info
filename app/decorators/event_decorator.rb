class EventDecorator < Draper::Decorator
  delegate(
    :next_observance,
    :starts_sundown,
    :upcoming_observances,
  )

  # Public: Whether the event has upcoming observances beyond the next
  #
  # Returns a Boolean
  def has_future_observances?
    upcoming_observances.count > 1
  end

  # Public: The name of the day of week of its next observance
  #
  # Returns a String
  def day_of_week
    return "" if next_observance.nil?
    next_observance.start_on.strftime("%A")
  end

  # Public: The textual description of the next observance's year
  #
  # Returns a String
  def year_string
    return "" if next_observance.nil?

    current_year = Date.today.year

    case next_observance.start_on.year
    when current_year; "this year"
    when current_year.next; "next year"
    when current_year.pred; "last year"
    else; next_observance.start_on.year.to_s
    end
  end

  # Public: The next obervance's year
  #
  # Returns a Fixnum
  def year
    raise(NoNextObservance) if next_observance.nil?

    next_observance.start_on.year
  end

  # Public: The name of the event
  #
  # Returns a String
  def name
    source.longname
  end

  NoNextObservance = Class.new(StandardError)
end