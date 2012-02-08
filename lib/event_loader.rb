class EventLoader
  def self.time_for(timestamp)
    timestamp.to_time(:local) if timestamp
  end

  def self.create(name, shortname, longname, starts_sundown, observance_details)
    # creating first, so that the observances have an event_id to pass validation
    Event.create(name: name, shortname: shortname, longname: longname, starts_sundown: starts_sundown).tap do |event|
      observances = observance_details.map do |observance_detail|
        Observance.new(start_at: time_for(observance_detail.first), end_at: time_for(observance_detail.last))
      end

      event.observances = observances
    end
  end
end
