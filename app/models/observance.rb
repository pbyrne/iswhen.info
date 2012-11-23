class Observance < ActiveRecord::Base
  belongs_to :event, :inverse_of => :observances

  validates :start_on,
    :presence => true
  validate :must_end_after_it_starts

  # Private: Validate that the end is after the start
  def must_end_after_it_starts
    if end_on? && end_on <= start_on
      errors.add(:end_on, "must be after the observance starts")
    end
  end
end
