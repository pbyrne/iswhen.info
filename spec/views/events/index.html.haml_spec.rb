require 'spec_helper'

describe "events/index.html.haml" do
  before do
    assign(:collection, [])
  end

  it "includes some welcome copy" do
    render

    expect(rendered).to include "Welcome"
    expect(rendered).to include "Choose from these upcoming holidays and events"
  end

  it "renders the list of upcoming events" do
    render

    expect(view).to render_template(partial: "_upcoming_events")
  end
end
