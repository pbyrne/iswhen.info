module EventsHelper
  # Public: Link to the given event
  #
  # event - Event to link to
  #
  # Returns a String containing the HTML link
  def link_to_event(event)
    link_to event.longname, root_url(subdomain: event.shortname)
  end
end
