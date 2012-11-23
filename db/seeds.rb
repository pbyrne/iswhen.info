# encoding: UTF-8
require 'event_loader'

# sources
# equinoxes and solstices: http://www.timeanddate.com/calendar/seasons.html

Event.destroy_all
Observance.destroy_all

EventLoader.new("April Fools’ Day", "aprilfools", "April Fools’ Day").tap do |loader|
  loader.add "2013-04-01"
  loader.add "2014-04-01"
  loader.add "2015-04-01"
  loader.add "2016-04-01"
  loader.add "2017-04-01"
  loader.add "2018-04-01"
  loader.add "2019-04-01"
  loader.add "2020-04-01"
end

EventLoader.new("Autumnal Equinox", "autumnalequinox", "Autumnal Equinox (First Day of Fall)").tap do |loader|
  loader.add "2013-09-22"
  loader.add "2014-09-23"
  loader.add "2015-09-23"
  loader.add "2016-09-22"
  loader.add "2017-09-22"
  loader.add "2018-09-22"
  loader.add "2019-09-23"
  loader.add "2020-09-22"
end

EventLoader.new("Vernal Equinox", "vernalequinox", "Vernal Equinox (First Day of Spring)").tap do |loader|
  loader.add "2013-03-20"
  loader.add "2014-03-20"
  loader.add "2015-03-20"
  loader.add "2016-03-19"
  loader.add "2017-03-20"
  loader.add "2018-03-20"
  loader.add "2019-03-20"
  loader.add "2020-03-19"
end

EventLoader.new("Winter Solstice", "wintersolstice", "Winter Solstice (First Day of Winter)").tap do |loader|
  loader.add "2012-12-21"
  loader.add "2013-12-21"
  loader.add "2014-12-21"
  loader.add "2015-12-22"
  loader.add "2016-12-21"
  loader.add "2017-12-21"
  loader.add "2018-12-21"
  loader.add "2019-12-21"
  loader.add "2020-12-21"
end

EventLoader.new("Summer Solstice", "summersolstice", "Summer Solstice (First Day of Summer)").tap do |loader|
  loader.add "2010-06-21"
  loader.add "2011-06-21"
  loader.add "2012-06-20"
  loader.add "2013-06-21"
  loader.add "2014-06-21"
  loader.add "2015-06-21"
  loader.add "2016-06-20"
  loader.add "2017-06-21"
end

