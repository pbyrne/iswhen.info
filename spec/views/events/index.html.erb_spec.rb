require 'spec_helper'

describe "events/index" do
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

  # it "renders a list of events" do
  #   render
  #   # Run the generator again with the --webrat flag if you want to use webrat matchers
  #   assert_select "tr>td", :text => "Name".to_s, :count => 2
  #   # Run the generator again with the --webrat flag if you want to use webrat matchers
  #   assert_select "tr>td", :text => "Shortname".to_s, :count => 2
  #   # Run the generator again with the --webrat flag if you want to use webrat matchers
  #   assert_select "tr>td", :text => "Longname".to_s, :count => 2
  #   # Run the generator again with the --webrat flag if you want to use webrat matchers
  #   assert_select "tr>td", :text => false.to_s, :count => 2
  # end
end
