module EventsHelper
  def link_to_event(event)
    # TODO fix that there's actually no subdomain
    link_to(event.name, root_path(:subdomain => event.shortname))
  end
end
