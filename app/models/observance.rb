class Observance < ActiveRecord::Base
  belongs_to :event, :inverse_of => :observances
end
