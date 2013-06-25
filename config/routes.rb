IsWhen::Application.routes.draw do
  # foo.iswhen.info routes to show the foo event
  get '', to: 'events#show', constraints: EventShowRouteMatcher.new
  # and the legacy XML API
  get '/xml-api', to: "xml_api#index", format: "xml"
  # and the legacy iphone page
  get '/iphone' => redirect(Rails.application.config.itunes_url)
  # otherwise, show the whole list
  root to: "events#index"
end
