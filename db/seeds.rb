# encoding: UTF-8
require 'event_loader'

# sources
# equinoxes and solstices: http://www.timeanddate.com/calendar/seasons.html
# canadian thanksgiving: http://www.holidays.net/thanksgiving/canadadates.htm

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

EventLoader.new("Christmas", "christmas", "Christmas").tap do |loader|
  loader.add "2012-12-25"
  loader.add "2013-12-25"
  loader.add "2014-12-25"
  loader.add "2015-12-25"
  loader.add "2016-12-25"
  loader.add "2017-12-25"
  loader.add "2018-12-25"
  loader.add "2019-12-25"
  loader.add "2020-12-25"
end

EventLoader.new("Fourth of July", "fourthofjuly", "Fourth of July").tap do |loader|
  loader.add "2013-07-04"
  loader.add "2014-07-04"
  loader.add "2015-07-04"
  loader.add "2016-07-04"
  loader.add "2017-07-04"
  loader.add "2018-07-04"
  loader.add "2019-07-04"
  loader.add "2020-07-04"
end

EventLoader.new("Veterans Day", "veteransday", "Veterans Day").tap do |loader|
  loader.add "2013-11-11"
  loader.add "2014-11-11"
  loader.add "2015-11-11"
  loader.add "2016-11-11"
  loader.add "2017-11-10"
  loader.add "2018-11-12"
  loader.add "2019-11-11"
  loader.add "2020-11-11"
end

EventLoader.new("Can. Thanksgiving", "canadianthanksgiving", "Canadian Thanksgiving").tap do |loader|
  loader.add "2013-10-14"
  loader.add "2014-10-13"
  loader.add "2015-10-12"
  loader.add "2016-10-10"
  loader.add "2017-10-09"
  loader.add "2018-10-08"
  loader.add "2019-10-14"
  loader.add "2020-10-12"
end

EventLoader.new("Columbus Day", "columbusday", "Columbus Day").tap do |loader|
  loader.add "2012-10-08"
  loader.add "2013-10-14"
  loader.add "2014-10-13"
  loader.add "2015-10-12"
  loader.add "2016-10-10"
  loader.add "2017-10-09"
  loader.add "2018-10-08"
  loader.add "2019-10-14"
  loader.add "2020-10-12"
end

