class EventShowRouteMatcher
  # Public: Whether the request should route to event#show
  #
  # request - The HTTP Request object
  #
  # Returns a Boolean
  def matches?(request)
    Event.for_subdomain(request.subdomain).present?
  rescue Event::EventNotFound
    false
  end
end
