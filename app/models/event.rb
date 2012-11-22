class Event < ActiveRecord::Base
  has_many :observances, :inverse_of => :event, :order => "start_on asc"

  validates :longname,
    :presence => true
  validates :name,
    :presence => true
  validates :shortname,
    :format => /^\w+$/,
    :uniqueness => true
end
