class Event < ActiveRecord::Base
  has_many :observances, :inverse_of => :event, :order => "start_at asc"
  has_many :upcoming_observances,
    :class_name => "Observance",
    :conditions => ["start_at >= ?", Date.today],
    :order => "start_at asc"

  validates :longname,
    :presence => true
  validates :name,
    :presence => true
  validates :shortname,
    :format => /^\w+$/,
    :uniqueness => true

  def self.with_subdomain(subdomain)
    where(shortname: subdomain)
  end

  def self.with_observances
    joins(:observances).uniq
  end

  def to_param
    shortname
  end
end
