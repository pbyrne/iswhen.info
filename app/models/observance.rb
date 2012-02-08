class Observance < ActiveRecord::Base
  belongs_to :event, :inverse_of => :observances

  validates :start_at, :presence => true
  validates :event_id, :presence => true
end
