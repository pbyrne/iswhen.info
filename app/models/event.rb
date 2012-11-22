class Event < ActiveRecord::Base
  validates :shortname,
    :format => /^\w+$/,
    :uniqueness => true
end
