xml.root do
  xml.holidays(type: "complete") do
    @collection.each do |event|
      xml.holiday do
        xml.shortname(event.shortname)
        xml.name(event.name)
        xml.longname(event.longname)
        xml.startssundown(event.starts_sundown)

        # FIXME this needs to be cleaned up, using decorators
        if event.next_observance
          event.next_observance.start_on.tap do |start_on|
            if start_on
              # tacking on timestamp for compatibility with old app
              xml.upcoming("#{start_on.to_s(:db)} 06:00:00")
              xml.upcomingday(start_on.to_s(:dayname))
              xml.upcomingdate(start_on.to_s(:dayandmonth))
              xml.upcomingyear(start_on.year)
            end
          end

          event.next_observance.end_on.tap do |end_on|
            if end_on
              xml.upcomingend("#{end_on.to_s(:db)} 06:00:00")
              xml.upcomingendday(end_on.to_s(:dayname))
              xml.upcomingenddate(end_on.to_s(:dayandmonth))
              xml.upcomingendyear(end_on.year)
            end
          end
        end

        if event.observance_after
          event.observance_after.start_on.tap do |start_on|
            if start_on
              # tacking on timestamp for compatibility with old app
              xml.after("#{start_on.to_s(:db)} 06:00:00")
              xml.afterday(start_on.to_s(:dayname))
              xml.afterdate(start_on.to_s(:dayandmonth))
              xml.afteryear(start_on.year)
            end
          end

          event.observance_after.end_on.tap do |end_on|
            if end_on
              xml.afterend("#{end_on.to_s(:db)} 06:00:00")
              xml.afterendday(end_on.to_s(:dayname))
              xml.afterenddate(end_on.to_s(:dayandmonth))
              xml.afterendyear(end_on.year)
            end
          end
        end
      end
    end
  end
end
