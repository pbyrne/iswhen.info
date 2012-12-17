require 'spec_helper'

describe "events/show.html.erb" do
  before do
    assign(:collection, [])
    assign(:event, FactoryGirl.build(:event) )
  end

  it "renders the selected event" do
    render

    view.should render_template(partial: "_event")
  end

  it "renders the list of upcoming events" do
    render
    view.should render_template(partial: "_upcoming_events")
  end
end
