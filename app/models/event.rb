class Event < ActiveRecord::Base
  has_many :observances, :inverse_of => :event, :order => "start_at asc"

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

  def self.order_by_upcoming
    joins(:observances).where("observances.start_at >= ?", Date.today).order("observances.start_at asc")
  end

  def to_param
    shortname
  end
end
