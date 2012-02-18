require 'spec_helper'

# Specs in this file have access to a helper object that includes
# the EventsHelper. For example:
#
# describe EventsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       helper.concat_strings("this","that").should == "this that"
#     end
#   end
# end
describe EventsHelper do
  context ".link_to_event(event)" do
    let(:event) { Factory(:event) }

    it "generates a link to the event's page" do
      link_to_event(event).should == link_to(event.name, root_path(:subdomain => event.shortname))
    end
  end
end
