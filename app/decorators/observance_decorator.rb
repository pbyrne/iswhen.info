class ObservanceDecorator < Draper::Decorator
  WEEKDAY_NAME = "%A"
  MONTH_NAME = "%B"

  delegate(
    :start_on,
  )

  # Public: The textual description of the next observance's year
  #
  # Returns a String
  def year
    current_year = Date.today.year

    case raw_year
    when current_year; "this year"
    when current_year.next; "next year"
    when current_year.pred; "last year"
    else; raw_year.to_s
    end
  end

  # Public: The year it starts
  #
  # Returns a Fixnum
  def raw_year
    start_on.year
  end

  # Public: The name of the day of week it starts
  #
  # Returns a String
  def day_of_week
    start_on.strftime(WEEKDAY_NAME)
  end

  # Public: The day of the month it starts
  #
  # Returns a String
  def day_of_month
    start_on.day.to_s
  end

  # Pubic: The name of the month it starts
  #
  # Returns a String
  def month
    start_on.strftime(MONTH_NAME)
  end

end
