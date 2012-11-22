class Event < ActiveRecord::Base
  validates :longname,
    :presence => true
  validates :name,
    :presence => true
  validates :shortname,
    :format => /^\w+$/,
    :uniqueness => true
end
