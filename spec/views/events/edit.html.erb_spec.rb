require 'spec_helper'

describe "events/edit" do
  before(:each) do
    @event = assign(:event, stub_model(Event,
      :name => "MyString",
      :shortname => "MyString",
      :longname => "MyString",
      :starts_sundown => false
    ))
  end

  it "renders the edit event form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => events_path(@event), :method => "post" do
      assert_select "input#event_name", :name => "event[name]"
      assert_select "input#event_shortname", :name => "event[shortname]"
      assert_select "input#event_longname", :name => "event[longname]"
      assert_select "input#event_starts_sundown", :name => "event[starts_sundown]"
    end
  end
end
