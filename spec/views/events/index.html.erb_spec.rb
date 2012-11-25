require 'spec_helper'

describe "events/index.html.erb" do
  it "includes some welcome copy" do
    render

    rendered.should include "<h1>Welcome"
    rendered.should include "Choose from these upcoming holidays and events"
  end

  it "renders the list of upcoming events" do
    render

    view.should render_template(partial: "_upcoming_events")
  end
end
