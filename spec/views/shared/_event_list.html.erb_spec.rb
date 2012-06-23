require "spec_helper"

describe "shared/_event_list" do
  let(:event1) { create(:event_with_observances) }
  let(:event2) { create(:event_with_observances) }
  let(:catalog) { Catalog.new([event1, event2]) }

  before(:each) do
    assign(:catalog, catalog)
  end

  it "renders a list of events" do
    render

    assert_select ".events"
    assert_select ".events .event", :count => 2
    assert_select ".event a", :count => 2
  end
end

