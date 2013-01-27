class Observance < ActiveRecord::Base
  attr_accessible :event_id, :start_on, :end_on

  belongs_to :event, :inverse_of => :observances

  scope :upcoming, where("start_on >= ?", Date.current)

  validates :start_on,
    :presence => true
  validate :must_end_after_it_starts

  # Private: Validate that the end is after the start
  def must_end_after_it_starts
    if ends_before_it_begins?
      errors.add(:end_on, "must be after the observance starts")
    end
  end

  # Private: Whether the Observance ends before it begins
  def ends_before_it_begins?
    end_on? && end_on <= start_on
  end
end
