# encoding: UTF-8
require 'event_loader'

# sources
# equinoxes and solstices: http://www.timeanddate.com/calendar/seasons.html
# canadian thanksgiving: http://www.holidays.net/thanksgiving/canadadates.htm
# far-future american holidays: http://www.when-is.com/martin-luther-king.asp
# far-future mardi gras: http://www.neworleansonline.com/neworleans/mardigras/mgdates.html

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

EventLoader.new("New Year’s Day", "newyears", "New Year’s Day").tap do |loader|
  loader.add "2012-01-01"
  loader.add "2013-01-01"
  loader.add "2014-01-01"
  loader.add "2015-01-01"
  loader.add "2016-01-01"
  loader.add "2017-01-01"
  loader.add "2018-01-01"
  loader.add "2019-01-01"
  loader.add "2020-01-01"
end

EventLoader.new("St. Patrick’s Day", "stpatricksday", "Saint Patrick’s Day").tap do |loader|
  loader.add "2013-03-17"
  loader.add "2014-03-17"
  loader.add "2015-03-17"
  loader.add "2016-03-17"
  loader.add "2017-03-17"
  loader.add "2018-03-17"
  loader.add "2019-03-17"
  loader.add "2020-03-17"
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

EventLoader.new("Mother’s Day", "mothersday", "Mother’s Day").tap do |loader|
  loader.add "2012-05-13"
  loader.add "2013-05-12"
  loader.add "2014-05-11"
  loader.add "2015-05-10"
  loader.add "2016-05-08"
  loader.add "2017-05-14"
  loader.add "2018-05-13"
  loader.add "2019-05-14"
  loader.add "2020-05-10"
end

EventLoader.new("Super Bowl", "superbowl", "Super Bowl").tap do |loader|
  loader.add "2013-02-03"
  loader.add "2014-02-02"
end

EventLoader.new("Thanksgiving", "thanksgiving", "Thanksgiving").tap do |loader|
  loader.add "2012-11-22"
  loader.add "2013-11-28"
  loader.add "2014-11-27"
  loader.add "2015-11-26"
  loader.add "2016-11-24"
  loader.add "2017-11-23"
  loader.add "2018-11-22"
  loader.add "2019-11-28"
  loader.add "2020-11-26"
end

EventLoader.new("Valentine’s Day", "valentinesday", "Valentine’s Day").tap do |loader|
  loader.add "2012-02-14"
  loader.add "2013-02-14"
  loader.add "2014-02-14"
  loader.add "2015-02-14"
  loader.add "2016-02-14"
  loader.add "2017-02-14"
  loader.add "2018-02-14"
  loader.add "2019-02-14"
  loader.add "2020-02-14"
end

EventLoader.new("Presidents’ Day", "presidentsday", "Presidents’ Day").tap do |loader|
  loader.add "2013-02-18"
  loader.add "2014-02-17"
  loader.add "2015-02-16"
  loader.add "2016-02-15"
  loader.add "2017-02-20"
  loader.add "2018-02-19"
  loader.add "2019-02-18"
  loader.add "2020-02-17"
end

EventLoader.new("MLK Jr. Day", "mlkday", "Martin Luthor King, Jr Day").tap do |loader|
  loader.add "2013-01-21"
  loader.add "2014-01-20"
  loader.add "2015-01-19"
  loader.add "2016-01-18"
  loader.add "2017-01-17"
  loader.add "2018-01-15"
  loader.add "2019-01-21"
  loader.add "2020-01-20"
end

EventLoader.new("Earth Day", "earthday", "Earth Day").tap do |loader|
  loader.add "2012-04-22"
  loader.add "2013-04-22"
  loader.add "2014-04-22"
  loader.add "2015-04-22"
  loader.add "2016-04-22"
  loader.add "2017-04-22"
  loader.add "2018-04-22"
  loader.add "2019-04-22"
  loader.add "2020-04-22"
end

EventLoader.new("Flag Day", "flagday", "US Flag Day").tap do |loader|
  loader.add "2012-06-14"
  loader.add "2013-06-14"
  loader.add "2014-06-14"
  loader.add "2015-06-14"
  loader.add "2016-06-14"
  loader.add "2017-06-14"
  loader.add "2018-06-14"
  loader.add "2019-06-14"
  loader.add "2020-06-14"
end

EventLoader.new("Leap Year", "leapyear", "Leap Year Day").tap do |loader|
  loader.add "2016-02-29"
  loader.add "2020-02-29"
  loader.add "2024-02-29"
end

EventLoader.new("Mardi Gras", "mardigras", "Mardi Gras").tap do |loader|
  loader.add "2012-02-21"
  loader.add "2013-02-12"
  loader.add "2014-03-04"
  loader.add "2015-02-17"
  loader.add "2016-02-09"
  loader.add "2017-02-28"
  loader.add "2018-02-13"
  loader.add "2019-04-05"
  loader.add "2020-02-25"
end

