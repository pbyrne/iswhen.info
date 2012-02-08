# encoding: UTF-8
require 'event_loader'

Event.destroy_all
Observance.destroy_all

EventLoader.create("April Fools’ Day", "aprilfools", "April Fools’ Day", nil, [
  ["2011-04-01 05:00:00 UTC", ""],
  ["2012-04-01 05:00:00 UTC", ""],
  ["2013-04-01 05:00:00 UTC", ""],
  ["2014-04-01 05:00:00 UTC", ""],
  ["2015-04-01 05:00:00 UTC", ""],
  ["2016-04-01 05:00:00 UTC", ""],
  ["2017-04-01 05:00:00 UTC", ""],
  ["2018-04-01 05:00:00 UTC", ""],
  ["2019-04-01 05:00:00 UTC", ""],
  ["2020-04-01 05:00:00 UTC", ""],
])

EventLoader.create("Autumnal Equinox", "autumnalequinox", "Autumnal Equinox (First Day of Fall)", nil, [
  ["2010-09-23 05:00:00 UTC", ""],
  ["2011-09-23 05:00:00 UTC", ""],
  ["2012-09-22 05:00:00 UTC", ""],
  ["2013-09-22 05:00:00 UTC", ""],
  ["2014-09-23 05:00:00 UTC", ""],
  ["2015-09-23 05:00:00 UTC", ""],
  ["2016-09-22 05:00:00 UTC", ""],
  ["2017-09-22 05:00:00 UTC", ""],
])

EventLoader.create("Can. Thanksgiving", "canadianthanksgiving", "Canadian Thanksgiving", nil, [
  ["2009-10-12 05:00:00 UTC", ""],
  ["2010-10-11 05:00:00 UTC", ""],
  ["2011-10-10 05:00:00 UTC", ""],
  ["2012-10-08 05:00:00 UTC", ""],
  ["2013-10-14 05:00:00 UTC", ""],
  ["2014-10-13 05:00:00 UTC", ""],
  ["2015-10-12 05:00:00 UTC", ""],
  ["2016-10-10 05:00:00 UTC", ""],
  ["2017-10-09 05:00:00 UTC", ""],
  ["2018-10-08 05:00:00 UTC", ""],
])

EventLoader.create("Chinese New Year", "chinesenewyear", "Chinese New Year", nil, [
  ["2010-02-14 06:00:00 UTC", ""],
  ["2011-02-03 06:00:00 UTC", ""],
  ["2012-01-23 06:00:00 UTC", ""],
  ["2013-02-10 06:00:00 UTC", ""],
  ["2014-01-31 06:00:00 UTC", ""],
  ["2015-02-19 06:00:00 UTC", ""],
  ["2016-02-08 06:00:00 UTC", ""],
  ["2017-01-28 06:00:00 UTC", ""],
  ["2018-02-16 06:00:00 UTC", ""],
  ["2019-02-05 06:00:00 UTC", ""],
])

EventLoader.create("Christmas", "christmas", "Christmas", nil, [
  ["2009-12-25 06:00:00 UTC", ""],
  ["2010-12-25 06:00:00 UTC", ""],
  ["2011-12-25 06:00:00 UTC", ""],
  ["2012-12-25 06:00:00 UTC", ""],
  ["2013-12-25 06:00:00 UTC", ""],
  ["2014-12-25 06:00:00 UTC", ""],
  ["2015-12-25 06:00:00 UTC", ""],
  ["2016-12-25 06:00:00 UTC", ""],
  ["2017-12-25 06:00:00 UTC", ""],
  ["2018-12-25 06:00:00 UTC", ""],
])

EventLoader.create("Columbus Day", "columbusday", "Columbus Day", nil, [
  ["2009-10-12 05:00:00 UTC", ""],
  ["2010-10-11 05:00:00 UTC", ""],
  ["2011-10-10 05:00:00 UTC", ""],
  ["2012-10-08 05:00:00 UTC", ""],
  ["2013-10-14 05:00:00 UTC", ""],
  ["2014-10-13 05:00:00 UTC", ""],
  ["2015-10-12 05:00:00 UTC", ""],
  ["2016-10-10 05:00:00 UTC", ""],
  ["2017-10-09 05:00:00 UTC", ""],
  ["2018-10-08 05:00:00 UTC", ""],
  ["2019-10-14 05:00:00 UTC", ""],
])

EventLoader.create("Constitution Day", "constitutionday", "Constitution Day", nil, [
  ["2011-09-17 05:00:00 UTC", ""],
  ["2012-09-17 05:00:00 UTC", ""],
  ["2013-09-17 05:00:00 UTC", ""],
  ["2014-09-17 05:00:00 UTC", ""],
  ["2015-09-17 05:00:00 UTC", ""],
  ["2016-09-17 05:00:00 UTC", ""],
  ["2017-09-17 05:00:00 UTC", ""],
  ["2018-09-17 05:00:00 UTC", ""],
  ["2019-09-17 05:00:00 UTC", ""],
])

EventLoader.create("DST End", "dstend", "End of Daylight Saving Time", nil, [
  ["2009-11-01 05:00:00 UTC", ""],
  ["2010-11-07 05:00:00 UTC", ""],
  ["2011-11-06 05:00:00 UTC", ""],
  ["2012-11-04 05:00:00 UTC", ""],
  ["2013-11-03 05:00:00 UTC", ""],
  ["2014-11-02 05:00:00 UTC", ""],
  ["2015-11-01 05:00:00 UTC", ""],
  ["2016-11-06 05:00:00 UTC", ""],
  ["2017-11-05 05:00:00 UTC", ""],
  ["2018-11-04 05:00:00 UTC", ""],
  ["2019-11-03 05:00:00 UTC", ""],
])

EventLoader.create("DST Start", "dststart", "Start of Daylight Saving Time", nil, [
  ["2010-03-14 06:00:00 UTC", ""],
  ["2011-03-13 06:00:00 UTC", ""],
  ["2012-03-11 06:00:00 UTC", ""],
  ["2013-03-10 06:00:00 UTC", ""],
  ["2014-03-09 06:00:00 UTC", ""],
  ["2015-03-08 06:00:00 UTC", ""],
  ["2016-03-13 06:00:00 UTC", ""],
  ["2017-03-12 06:00:00 UTC", ""],
  ["2018-03-08 06:00:00 UTC", ""],
  ["2019-03-10 06:00:00 UTC", ""],
])

EventLoader.create("Earth Day", "earthday", "Earth Day", nil, [
  ["2011-04-22 05:00:00 UTC", ""],
  ["2012-04-22 05:00:00 UTC", ""],
  ["2013-04-22 05:00:00 UTC", ""],
  ["2014-04-22 05:00:00 UTC", ""],
  ["2015-04-22 05:00:00 UTC", ""],
  ["2016-04-22 05:00:00 UTC", ""],
  ["2017-04-22 05:00:00 UTC", ""],
  ["2018-04-22 05:00:00 UTC", ""],
  ["2019-04-22 05:00:00 UTC", ""],
  ["2020-04-22 05:00:00 UTC", ""],
])

EventLoader.create("Easter", "easter", "Easter", nil, [
  ["2009-04-12 05:00:00 UTC", ""],
  ["2010-04-04 05:00:00 UTC", ""],
  ["2011-04-24 05:00:00 UTC", ""],
  ["2012-04-08 05:00:00 UTC", ""],
  ["2013-03-31 05:00:00 UTC", ""],
  ["2014-04-20 05:00:00 UTC", ""],
  ["2015-04-05 05:00:00 UTC", ""],
  ["2016-03-27 05:00:00 UTC", ""],
  ["2017-04-16 05:00:00 UTC", ""],
  ["2018-04-01 05:00:00 UTC", ""],
])

EventLoader.create("US Election Day", "electionday", "US Election Day", nil, [
  ["2008-11-04 06:00:00 UTC", ""],
  ["2009-11-03 06:00:00 UTC", ""],
  ["2010-11-02 05:00:00 UTC", ""],
  ["2011-11-08 06:00:00 UTC", ""],
  ["2012-11-06 06:00:00 UTC", ""],
  ["2013-11-05 06:00:00 UTC", ""],
  ["2014-11-04 06:00:00 UTC", ""],
  ["2015-11-03 06:00:00 UTC", ""],
  ["2016-11-08 06:00:00 UTC", ""],
  ["2017-11-07 06:00:00 UTC", ""],
  ["2018-11-06 06:00:00 UTC", ""],
  ["2019-11-05 06:00:00 UTC", ""],
])

EventLoader.create("Father’s Day", "fathersday", "Father’s Day", nil, [
  ["2009-06-21 05:00:00 UTC", ""],
  ["2010-06-20 05:00:00 UTC", ""],
  ["2011-06-19 05:00:00 UTC", ""],
  ["2012-06-17 05:00:00 UTC", ""],
  ["2013-06-16 05:00:00 UTC", ""],
  ["2014-06-15 05:00:00 UTC", ""],
  ["2015-06-21 05:00:00 UTC", ""],
  ["2016-06-19 05:00:00 UTC", ""],
  ["2017-06-18 05:00:00 UTC", ""],
  ["2018-06-17 05:00:00 UTC", ""],
])

EventLoader.create("Flag Day", "flagday", "US Flag Day", nil, [
  ["2011-06-14 05:00:00 UTC", ""],
  ["2012-06-14 05:00:00 UTC", ""],
  ["2013-06-14 05:00:00 UTC", ""],
  ["2014-06-14 05:00:00 UTC", ""],
  ["2015-06-14 05:00:00 UTC", ""],
  ["2016-06-14 05:00:00 UTC", ""],
  ["2017-06-14 05:00:00 UTC", ""],
  ["2018-06-14 05:00:00 UTC", ""],
  ["2019-06-14 05:00:00 UTC", ""],
  ["2020-06-14 05:00:00 UTC", ""],
])

EventLoader.create("Fourth of July", "fourthofjuly", "Fourth of July", nil, [
  ["2009-07-04 05:00:00 UTC", ""],
  ["2010-07-04 05:00:00 UTC", ""],
  ["2011-07-04 05:00:00 UTC", ""],
  ["2012-07-04 05:00:00 UTC", ""],
  ["2013-07-04 05:00:00 UTC", ""],
  ["2014-07-04 05:00:00 UTC", ""],
  ["2015-07-04 05:00:00 UTC", ""],
  ["2016-07-04 05:00:00 UTC", ""],
  ["2017-07-04 05:00:00 UTC", ""],
  ["2018-07-04 05:00:00 UTC", ""],
  ["2019-07-04 05:00:00 UTC", ""],
  ["2020-07-04 05:00:00 UTC", ""],
])

EventLoader.create("Full Moon", "fullmoon", "Full Moon", nil, [
  ["2009-12-01 06:00:00 UTC", ""],
  ["2009-12-31 06:00:00 UTC", ""],
  ["2010-01-29 06:00:00 UTC", ""],
  ["2010-02-28 06:00:00 UTC", ""],
  ["2010-03-29 05:00:00 UTC", ""],
  ["2010-04-28 05:00:00 UTC", ""],
  ["2010-05-27 05:00:00 UTC", ""],
  ["2010-06-26 05:00:00 UTC", ""],
  ["2010-07-25 05:00:00 UTC", ""],
  ["2010-08-24 05:00:00 UTC", ""],
  ["2010-09-23 05:00:00 UTC", ""],
  ["2010-10-22 05:00:00 UTC", ""],
  ["2010-11-21 06:00:00 UTC", ""],
  ["2010-12-21 06:00:00 UTC", ""],
  ["2011-01-19 06:00:00 UTC", ""],
  ["2011-02-18 06:00:00 UTC", ""],
  ["2011-03-19 05:00:00 UTC", ""],
  ["2011-04-17 05:00:00 UTC", ""],
  ["2011-05-17 05:00:00 UTC", ""],
  ["2011-06-15 05:00:00 UTC", ""],
  ["2011-07-14 05:00:00 UTC", ""],
  ["2011-08-13 05:00:00 UTC", ""],
  ["2011-09-12 05:00:00 UTC", ""],
  ["2011-10-11 05:00:00 UTC", ""],
  ["2011-11-10 06:00:00 UTC", ""],
  ["2011-12-10 06:00:00 UTC", ""],
  ["2012-01-08 06:00:00 UTC", ""],
  ["2012-02-07 06:00:00 UTC", ""],
  ["2012-03-08 06:00:00 UTC", ""],
  ["2012-04-06 05:00:00 UTC", ""],
  ["2012-05-05 05:00:00 UTC", ""],
  ["2012-06-04 05:00:00 UTC", ""],
  ["2012-07-03 05:00:00 UTC", ""],
  ["2012-08-01 05:00:00 UTC", ""],
  ["2012-08-31 05:00:00 UTC", ""],
  ["2012-09-29 05:00:00 UTC", ""],
  ["2012-10-29 05:00:00 UTC", ""],
  ["2012-11-28 06:00:00 UTC", ""],
  ["2012-12-28 06:00:00 UTC", ""],
  ["2013-01-26 06:00:00 UTC", ""],
  ["2013-02-25 06:00:00 UTC", ""],
  ["2013-03-27 05:00:00 UTC", ""],
  ["2013-04-25 05:00:00 UTC", ""],
  ["2013-05-24 05:00:00 UTC", ""],
  ["2013-06-23 05:00:00 UTC", ""],
  ["2013-07-22 05:00:00 UTC", ""],
  ["2013-08-20 05:00:00 UTC", ""],
  ["2013-09-19 05:00:00 UTC", ""],
  ["2013-10-18 05:00:00 UTC", ""],
  ["2013-11-17 06:00:00 UTC", ""],
  ["2013-12-17 06:00:00 UTC", ""],
])

EventLoader.create("Grandparents Day", "grandparentsday", "Grandparents Day", nil, [
  ["2009-09-13 05:00:00 UTC", ""],
  ["2010-09-12 05:00:00 UTC", ""],
  ["2011-09-11 05:00:00 UTC", ""],
  ["2012-09-09 05:00:00 UTC", ""],
  ["2013-09-08 05:00:00 UTC", ""],
  ["2014-09-07 05:00:00 UTC", ""],
  ["2015-09-13 05:00:00 UTC", ""],
  ["2016-09-11 05:00:00 UTC", ""],
  ["2017-09-10 05:00:00 UTC", ""],
  ["2018-09-09 05:00:00 UTC", ""],
])

EventLoader.create("Groundhog Day", "groundhogday", "Groundhog Day", nil, [
  ["2010-02-02 06:00:00 UTC", ""],
  ["2011-02-02 06:00:00 UTC", ""],
  ["2012-02-02 06:00:00 UTC", ""],
  ["2013-02-02 06:00:00 UTC", ""],
  ["2014-02-02 06:00:00 UTC", ""],
  ["2015-02-02 06:00:00 UTC", ""],
  ["2016-02-02 06:00:00 UTC", ""],
  ["2017-02-02 06:00:00 UTC", ""],
  ["2018-02-02 06:00:00 UTC", ""],
  ["2019-02-02 06:00:00 UTC", ""],
])

EventLoader.create("Halloween", "halloween", "Halloween", nil, [
  ["2009-10-31 05:00:00 UTC", ""],
  ["2010-10-31 05:00:00 UTC", ""],
  ["2011-10-31 05:00:00 UTC", ""],
  ["2012-10-31 05:00:00 UTC", ""],
  ["2013-10-31 05:00:00 UTC", ""],
  ["2014-10-31 05:00:00 UTC", ""],
  ["2015-10-31 05:00:00 UTC", ""],
  ["2016-10-31 05:00:00 UTC", ""],
  ["2017-10-31 05:00:00 UTC", ""],
  ["2018-10-31 05:00:00 UTC", ""],
])

EventLoader.create("Hanukkah", "hanukkah", "Hanukkah", true, [
  ["2009-12-11 06:00:00 UTC", "2009-12-19 06:00:00 UTC"],
  ["2010-12-01 06:00:00 UTC", "2010-12-09 06:00:00 UTC"],
  ["2011-12-20 06:00:00 UTC", "2011-12-28 06:00:00 UTC"],
  ["2012-12-08 06:00:00 UTC", "2012-12-16 06:00:00 UTC"],
  ["2013-11-27 06:00:00 UTC", "2013-12-05 06:00:00 UTC"],
  ["2014-12-16 06:00:00 UTC", "2014-12-24 06:00:00 UTC"],
  ["2015-12-06 06:00:00 UTC", "2015-12-14 06:00:00 UTC"],
  ["2016-12-24 06:00:00 UTC", "2017-01-01 06:00:00 UTC"],
  ["2017-12-12 06:00:00 UTC", "2017-12-20 06:00:00 UTC"],
  ["2018-12-02 06:00:00 UTC", "2018-12-10 06:00:00 UTC"],
  ["2019-12-22 06:00:00 UTC", "2019-12-30 06:00:00 UTC"],
])

EventLoader.create("Labor Day", "laborday", "Labor Day", nil, [
  ["2009-09-07 05:00:00 UTC", ""],
  ["2010-09-06 05:00:00 UTC", ""],
  ["2011-09-05 05:00:00 UTC", ""],
  ["2012-09-03 05:00:00 UTC", ""],
  ["2013-09-02 05:00:00 UTC", ""],
  ["2014-09-01 05:00:00 UTC", ""],
  ["2015-09-07 05:00:00 UTC", ""],
  ["2016-09-05 05:00:00 UTC", ""],
  ["2017-09-04 05:00:00 UTC", ""],
  ["2018-09-03 05:00:00 UTC", ""],
])

EventLoader.create("Leap Year", "leapyear", "Leap Year Day", nil, [
  ["2012-02-29 06:00:00 UTC", ""],
  ["2016-02-29 06:00:00 UTC", ""],
  ["2020-02-29 06:00:00 UTC", ""],
  ["2024-02-29 06:00:00 UTC", ""],
])

EventLoader.create("Lunar Eclipse", "lunareclipse", "Lunar Eclipse", nil, [
  ["2010-12-21 06:00:00 UTC", ""],
  ["2011-12-10 06:00:00 UTC", ""],
  ["2012-06-04 05:00:00 UTC", ""],
  ["2012-11-28 06:00:00 UTC", ""],
  ["2013-04-25 05:00:00 UTC", ""],
  ["2013-05-25 05:00:00 UTC", ""],
  ["2013-10-18 05:00:00 UTC", ""],
  ["2014-04-15 05:00:00 UTC", ""],
  ["2014-10-08 05:00:00 UTC", ""],
  ["2015-04-04 05:00:00 UTC", ""],
  ["2015-09-28 05:00:00 UTC", ""],
])

EventLoader.create("Mardi Gras", "mardigras", "Mardi Gras", nil, [
  ["2010-02-16 06:00:00 UTC", ""],
  ["2011-03-08 06:00:00 UTC", ""],
  ["2012-02-21 06:00:00 UTC", ""],
  ["2013-02-12 06:00:00 UTC", ""],
  ["2014-03-04 06:00:00 UTC", ""],
  ["2015-02-17 06:00:00 UTC", ""],
  ["2016-02-09 06:00:00 UTC", ""],
  ["2017-02-28 06:00:00 UTC", ""],
  ["2018-02-13 06:00:00 UTC", ""],
  ["2019-04-05 05:00:00 UTC", ""],
])

EventLoader.create("Memorial Day", "memorialday", "Memorial Day", nil, [
  ["2009-05-25 05:00:00 UTC", ""],
  ["2010-05-31 05:00:00 UTC", ""],
  ["2011-05-30 05:00:00 UTC", ""],
  ["2012-05-28 05:00:00 UTC", ""],
  ["2013-05-27 05:00:00 UTC", ""],
  ["2014-05-26 05:00:00 UTC", ""],
  ["2015-05-25 05:00:00 UTC", ""],
  ["2016-05-30 05:00:00 UTC", ""],
  ["2017-05-29 05:00:00 UTC", ""],
  ["2018-05-28 05:00:00 UTC", ""],
])

EventLoader.create("MLK Jr. Day", "mlkday", "Martin Luthor King, Jr Day", nil, [
  ["2010-01-18 06:00:00 UTC", ""],
  ["2011-01-17 06:00:00 UTC", ""],
  ["2012-01-16 06:00:00 UTC", ""],
  ["2013-01-21 06:00:00 UTC", ""],
  ["2014-01-20 06:00:00 UTC", ""],
  ["2015-01-19 06:00:00 UTC", ""],
  ["2016-01-18 06:00:00 UTC", ""],
  ["2017-01-17 06:00:00 UTC", ""],
  ["2018-01-15 06:00:00 UTC", ""],
  ["2019-01-21 06:00:00 UTC", ""],
])

EventLoader.create("Mother’s Day", "mothersday", "Mother’s Day", nil, [
  ["2009-05-10 05:00:00 UTC", ""],
  ["2010-05-09 05:00:00 UTC", ""],
  ["2011-05-08 05:00:00 UTC", ""],
  ["2012-05-13 05:00:00 UTC", ""],
  ["2013-05-12 05:00:00 UTC", ""],
  ["2014-05-11 05:00:00 UTC", ""],
  ["2015-05-10 05:00:00 UTC", ""],
  ["2016-05-08 05:00:00 UTC", ""],
  ["2017-05-14 05:00:00 UTC", ""],
  ["2018-05-13 05:00:00 UTC", ""],
])

EventLoader.create("New Moon", "newmoon", "New Moon", nil, [
  ["2010-12-05 23:36:00 UTC", ""],
  ["2011-01-04 15:03:00 UTC", ""],
  ["2011-01-12 17:31:00 UTC", ""],
  ["2011-01-20 03:21:00 UTC", ""],
  ["2011-01-26 18:57:00 UTC", ""],
  ["2011-02-03 08:31:00 UTC", ""],
  ["2011-02-11 13:18:00 UTC", ""],
  ["2011-02-18 14:36:00 UTC", ""],
  ["2011-02-25 05:26:00 UTC", ""],
  ["2011-03-05 02:46:00 UTC", ""],
  ["2011-03-13 05:45:00 UTC", ""],
  ["2011-03-19 23:10:00 UTC", ""],
  ["2011-03-26 17:07:00 UTC", ""],
  ["2011-04-03 19:32:00 UTC", ""],
  ["2011-04-11 17:05:00 UTC", ""],
  ["2011-04-18 07:44:00 UTC", ""],
  ["2011-04-25 07:47:00 UTC", ""],
  ["2011-05-03 11:51:00 UTC", ""],
  ["2011-05-11 01:33:00 UTC", ""],
  ["2011-05-17 16:09:00 UTC", ""],
  ["2011-05-24 23:52:00 UTC", ""],
  ["2011-06-02 02:03:00 UTC", ""],
  ["2011-06-09 07:11:00 UTC", ""],
  ["2011-06-16 01:13:00 UTC", ""],
  ["2011-06-23 16:48:00 UTC", ""],
  ["2011-07-01 13:54:00 UTC", ""],
  ["2011-07-08 11:29:00 UTC", ""],
  ["2011-07-15 11:40:00 UTC", ""],
  ["2011-07-23 10:02:00 UTC", ""],
  ["2011-07-30 23:40:00 UTC", ""],
  ["2011-08-06 16:08:00 UTC", ""],
  ["2011-08-13 23:58:00 UTC", ""],
  ["2011-08-22 02:55:00 UTC", ""],
  ["2011-08-29 08:04:00 UTC", ""],
  ["2011-09-04 22:39:00 UTC", ""],
  ["2011-09-12 14:27:00 UTC", ""],
  ["2011-09-20 18:39:00 UTC", ""],
  ["2011-09-27 16:09:00 UTC", ""],
  ["2011-10-04 08:15:00 UTC", ""],
  ["2011-10-12 07:06:00 UTC", ""],
  ["2011-10-20 08:30:00 UTC", ""],
  ["2011-10-27 00:56:00 UTC", ""],
  ["2011-11-02 21:38:00 UTC", ""],
  ["2011-11-11 02:16:00 UTC", ""],
  ["2011-11-18 21:09:00 UTC", ""],
  ["2011-11-25 12:10:00 UTC", ""],
  ["2011-12-02 15:52:00 UTC", ""],
  ["2011-12-10 20:36:00 UTC", ""],
  ["2011-12-18 06:48:00 UTC", ""],
  ["2011-12-25 00:06:00 UTC", ""],
  ["2012-01-23 06:00:00 UTC", ""],
  ["2012-02-21 06:00:00 UTC", ""],
  ["2012-03-22 05:00:00 UTC", ""],
  ["2012-04-21 05:00:00 UTC", ""],
  ["2012-05-20 05:00:00 UTC", ""],
  ["2012-06-19 05:00:00 UTC", ""],
  ["2012-07-19 05:00:00 UTC", ""],
  ["2012-08-17 05:00:00 UTC", ""],
  ["2012-09-16 05:00:00 UTC", ""],
  ["2012-10-15 05:00:00 UTC", ""],
  ["2012-11-13 06:00:00 UTC", ""],
  ["2012-12-13 06:00:00 UTC", ""],
])

EventLoader.create("New Year’s Day", "newyears", "New Year’s Day", nil, [
  ["2010-01-01 06:00:00 UTC", ""],
  ["2011-01-01 06:00:00 UTC", ""],
  ["2012-01-01 06:00:00 UTC", ""],
  ["2013-01-01 06:00:00 UTC", ""],
  ["2014-01-01 06:00:00 UTC", ""],
  ["2015-01-01 06:00:00 UTC", ""],
  ["2016-01-01 06:00:00 UTC", ""],
  ["2017-01-01 06:00:00 UTC", ""],
  ["2018-01-01 06:00:00 UTC", ""],
  ["2019-01-01 06:00:00 UTC", ""],
])

EventLoader.create("Passover", "passover", "Passover", true, [
  ["2009-04-08 05:00:00 UTC", "2009-04-15 05:00:00 UTC"],
  ["2010-03-29 05:00:00 UTC", "2010-04-05 05:00:00 UTC"],
  ["2011-04-18 05:00:00 UTC", "2011-04-26 05:00:00 UTC"],
  ["2012-04-07 05:00:00 UTC", "2012-04-14 05:00:00 UTC"],
  ["2013-03-26 05:00:00 UTC", "2013-04-02 05:00:00 UTC"],
  ["2014-04-15 05:00:00 UTC", "2014-04-22 05:00:00 UTC"],
  ["2015-04-04 05:00:00 UTC", "2015-04-11 05:00:00 UTC"],
  ["2016-04-23 05:00:00 UTC", "2016-04-30 05:00:00 UTC"],
  ["2017-04-11 05:00:00 UTC", "2017-04-18 05:00:00 UTC"],
  ["2018-03-31 05:00:00 UTC", "2018-04-07 05:00:00 UTC"],
])

EventLoader.create("Pentecost", "pentecost", "Pentecost (Western)", nil, [
  ["2009-05-31 05:00:00 UTC", ""],
  ["2010-05-23 05:00:00 UTC", ""],
  ["2011-06-12 05:00:00 UTC", ""],
  ["2012-05-27 05:00:00 UTC", ""],
  ["2013-05-19 05:00:00 UTC", ""],
  ["2014-06-08 05:00:00 UTC", ""],
  ["2015-05-24 05:00:00 UTC", ""],
  ["2016-05-15 05:00:00 UTC", ""],
  ["2017-06-04 05:00:00 UTC", ""],
  ["2018-05-20 05:00:00 UTC", ""],
])

EventLoader.create("Presidents’ Day", "presidentsday", "Presidents’ Day", nil, [
  ["2010-02-15 06:00:00 UTC", ""],
  ["2011-02-21 06:00:00 UTC", ""],
  ["2012-02-20 06:00:00 UTC", ""],
  ["2013-02-18 06:00:00 UTC", ""],
  ["2014-02-17 06:00:00 UTC", ""],
  ["2015-02-16 06:00:00 UTC", ""],
  ["2016-02-15 06:00:00 UTC", ""],
  ["2017-02-20 06:00:00 UTC", ""],
  ["2018-02-19 06:00:00 UTC", ""],
  ["2019-02-18 06:00:00 UTC", ""],
])

EventLoader.create("Ramadan", "ramadan", "Ramadan", nil, [
  ["2010-09-10 05:00:00 UTC", "2010-10-08 05:00:00 UTC"],
  ["2011-07-31 05:00:00 UTC", "2011-08-28 05:00:00 UTC"],
  ["2012-07-19 05:00:00 UTC", "2012-08-16 05:00:00 UTC"],
  ["2013-07-08 05:00:00 UTC", "2013-08-05 05:00:00 UTC"],
  ["2014-06-27 05:00:00 UTC", "2014-07-25 05:00:00 UTC"],
  ["2015-06-17 05:00:00 UTC", "2015-07-15 05:00:00 UTC"],
  ["2016-06-05 05:00:00 UTC", "2016-07-03 05:00:00 UTC"],
  ["2017-05-26 05:00:00 UTC", "2017-06-23 05:00:00 UTC"],
])

EventLoader.create("Rosh Hashanah", "roshhashanah", "Rosh Hashanah", true, [
  ["2010-09-08 05:00:00 UTC", ""],
  ["2011-09-28 05:00:00 UTC", ""],
  ["2012-09-16 05:00:00 UTC", ""],
  ["2013-09-04 05:00:00 UTC", ""],
  ["2014-09-24 05:00:00 UTC", ""],
  ["2015-09-13 05:00:00 UTC", ""],
  ["2016-10-02 05:00:00 UTC", ""],
  ["2017-09-20 05:00:00 UTC", ""],
])

EventLoader.create("Solar Eclipse", "solareclipse", "Solar Eclipse", nil, [
  ["2010-01-15 13:07:39 UTC", ""],
  ["2010-07-12 00:34:38 UTC", ""],
  ["2011-01-04 14:51:42 UTC", ""],
  ["2011-06-02 02:17:18 UTC", ""],
  ["2011-07-01 13:39:30 UTC", ""],
  ["2011-11-25 12:21:24 UTC", ""],
  ["2012-05-21 04:53:54 UTC", ""],
  ["2012-11-14 04:12:55 UTC", ""],
  ["2013-05-10 05:26:20 UTC", ""],
  ["2013-11-03 18:47:36 UTC", ""],
  ["2014-04-29 11:04:33 UTC", ""],
  ["2014-10-24 02:45:39 UTC", ""],
  ["2015-03-20 14:46:47 UTC", ""],
  ["2015-09-13 11:55:19 UTC", ""],
  ["2016-03-09 07:58:19 UTC", ""],
  ["2016-09-01 14:08:02 UTC", ""],
  ["2017-02-26 20:54:33 UTC", ""],
  ["2017-07-13 08:02:16 UTC", ""],
  ["2017-08-21 23:26:40 UTC", ""],
  ["2018-02-16 02:52:33 UTC", ""],
  ["2018-08-11 14:47:28 UTC", ""],
])

EventLoader.create("St. Patrick’s Day", "stpatricksday", "Saint Patrick’s Day", nil, [
  ["2010-03-17 05:00:00 UTC", ""],
  ["2011-03-17 05:00:00 UTC", ""],
  ["2012-03-17 05:00:00 UTC", ""],
  ["2013-03-17 05:00:00 UTC", ""],
  ["2014-03-17 05:00:00 UTC", ""],
  ["2015-03-17 05:00:00 UTC", ""],
  ["2016-03-17 05:00:00 UTC", ""],
  ["2017-03-17 05:00:00 UTC", ""],
  ["2018-03-17 05:00:00 UTC", ""],
  ["2019-03-17 05:00:00 UTC", ""],
])

EventLoader.create("Summer Solstice", "summersolstice", "Summer Solstice (First Day of Summer)", nil, [
  ["2010-06-21 05:00:00 UTC", ""],
  ["2011-06-21 05:00:00 UTC", ""],
  ["2012-06-20 05:00:00 UTC", ""],
  ["2013-06-21 05:00:00 UTC", ""],
  ["2014-06-21 05:00:00 UTC", ""],
  ["2015-06-21 05:00:00 UTC", ""],
  ["2016-06-20 05:00:00 UTC", ""],
  ["2017-06-21 05:00:00 UTC", ""],
])

EventLoader.create("Super Bowl", "superbowl", "Super Bowl", nil, [
  ["2010-02-07 06:00:00 UTC", ""],
  ["2011-02-06 06:00:00 UTC", ""],
  ["2012-02-05 06:00:00 UTC", ""],
  ["2013-02-03 06:00:00 UTC", ""],
])

EventLoader.create("Thanksgiving", "thanksgiving", "Thanksgiving", nil, [
  ["2008-11-27 06:00:00 UTC", ""],
  ["2009-11-26 06:00:00 UTC", ""],
  ["2010-11-25 06:00:00 UTC", ""],
  ["2011-11-24 06:00:00 UTC", ""],
  ["2012-11-22 06:00:00 UTC", ""],
  ["2013-11-28 06:00:00 UTC", ""],
  ["2014-11-27 06:00:00 UTC", ""],
  ["2015-11-26 06:00:00 UTC", ""],
  ["2016-11-24 06:00:00 UTC", ""],
  ["2017-11-23 06:00:00 UTC", ""],
  ["2018-11-22 06:00:00 UTC", ""],
])

EventLoader.create("Valentine’s Day", "valentinesday", "Valentine’s Day", nil, [
  ["2010-02-14 06:00:00 UTC", ""],
  ["2011-02-14 06:00:00 UTC", ""],
  ["2012-02-14 06:00:00 UTC", ""],
  ["2013-02-14 06:00:00 UTC", ""],
  ["2014-02-14 06:00:00 UTC", ""],
  ["2015-02-14 06:00:00 UTC", ""],
  ["2016-02-14 06:00:00 UTC", ""],
  ["2017-02-14 06:00:00 UTC", ""],
  ["2018-02-14 06:00:00 UTC", ""],
  ["2019-02-14 06:00:00 UTC", ""],
])

EventLoader.create("Vernal Equinox", "vernalequinox", "Vernal Equinox (First Day of Spring)", nil, [
  ["2010-03-20 05:00:00 UTC", ""],
  ["2011-03-20 05:00:00 UTC", ""],
  ["2012-03-20 05:00:00 UTC", ""],
  ["2013-03-20 05:00:00 UTC", ""],
  ["2014-03-20 05:00:00 UTC", ""],
  ["2015-03-20 05:00:00 UTC", ""],
  ["2016-03-20 05:00:00 UTC", ""],
  ["2017-03-20 05:00:00 UTC", ""],
])

EventLoader.create("Veterans Day", "veteransday", "Veterans Day", nil, [
  ["2009-11-11 06:00:00 UTC", ""],
  ["2010-11-11 06:00:00 UTC", ""],
  ["2011-11-11 06:00:00 UTC", ""],
  ["2012-11-12 06:00:00 UTC", ""],
  ["2013-11-11 06:00:00 UTC", ""],
  ["2014-11-11 06:00:00 UTC", ""],
  ["2015-11-11 06:00:00 UTC", ""],
  ["2016-11-11 06:00:00 UTC", ""],
  ["2017-11-10 06:00:00 UTC", ""],
  ["2018-11-12 06:00:00 UTC", ""],
  ["2019-11-11 06:00:00 UTC", ""],
])

EventLoader.create("Winter Solstice", "wintersolstice", "Winter Solstice (First Day of Winter)", nil, [
  ["2009-12-21 06:00:00 UTC", ""],
  ["2010-12-21 06:00:00 UTC", ""],
  ["2011-12-22 06:00:00 UTC", ""],
  ["2012-12-21 06:00:00 UTC", ""],
  ["2013-12-21 06:00:00 UTC", ""],
  ["2014-12-21 06:00:00 UTC", ""],
  ["2015-12-22 06:00:00 UTC", ""],
  ["2016-12-21 06:00:00 UTC", ""],
  ["2017-12-21 06:00:00 UTC", ""],
])

EventLoader.create("Yom Kippur", "yomkippur", "Yom Kippur", true, [
  ["2009-09-27 05:00:00 UTC", ""],
  ["2010-09-17 05:00:00 UTC", ""],
  ["2011-10-07 05:00:00 UTC", ""],
  ["2012-09-25 05:00:00 UTC", ""],
  ["2013-09-13 05:00:00 UTC", ""],
  ["2014-10-03 05:00:00 UTC", ""],
  ["2015-09-22 05:00:00 UTC", ""],
  ["2016-10-11 05:00:00 UTC", ""],
  ["2017-09-29 05:00:00 UTC", ""],
])


