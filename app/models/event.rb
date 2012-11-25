class Event < ActiveRecord::Base
  attr_accessible :name, :shortname, :longname, :starts_sundown

  has_many :observances, :inverse_of => :event, :order => "start_on asc"

  validates :longname,
    :presence => true
  validates :name,
    :presence => true
  validates :shortname,
    :format => /^\w+$/,
    :uniqueness => true

  # Public: Sort by next_date
  #
  # Assumes that Event#next_date will never be nil. The intention is to
  # backfill with far-future date in its absense.
  def <=>(other)
    next_date <=> other.next_date
  end

  # Public: The date of the next occurance
  #
  # Returns a Date
  def next_date
    next_observance.try(:start_on) || 100.years.from_now.to_date
  end

  # Public: The observances in the future
  #
  # Returns a Relation of Observances
  def upcoming_observanes
    # TODO refactor this to an Observance scope?
    observances.where("start_on >= ?", Date.today)
  end

  # Public: The next upcoming observance
  #
  # Returns an Observance
  def next_observance
    # TODO figure out why this does a whole bunch of queries event with an Event.include(:observances)
    @next_observance ||= upcoming_observanes.first
  end
end
