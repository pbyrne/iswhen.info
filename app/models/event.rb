class Event < ActiveRecord::Base
  attr_accessible :longname, :name, :shortname, :starts_sundown
end
