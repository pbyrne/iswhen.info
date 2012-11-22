class Observance < ActiveRecord::Base
  belongs_to :event, :inverse_of => :observances

  validates :start_on,
    :presence => true
end
