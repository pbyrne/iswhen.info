require "spec_helper"

describe EventShowRouteMatcher do
  let(:request) { double(:request, subdomain: "foo") }

  context "#matches?(request)" do
    it "matches if given a subdomain matching an existing event" do
      Event.stub(:for_subdomain).with(request.subdomain).and_return(FactoryGirl.build(:event))
      subject.matches?(request).should be_true
    end

    it "does not match if subdomain does not match an event" do
      Event.stub(:for_subdomain).with(request.subdomain).and_raise(Event::EventNotFound)
      subject.matches?(request).should be_false
    end
  end
end
