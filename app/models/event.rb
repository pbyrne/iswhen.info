class Event < ActiveRecord::Base
  validates :longname,
    :presence => true
  validates :name,
    :presence => true
  validates :shortname,
    :format => /^\w+$/,
    :uniqueness => true

  def self.all_but(event)
    where("id != ?", event)
  end

  def self.with_subdomain(subdomain)
    where(shortname: subdomain)
  end

  def to_param
    shortname
  end
end
