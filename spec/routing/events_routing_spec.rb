require "spec_helper"

describe EventsController do
  describe "routing" do

    it "routes to #show" do
      get("http://foo.example.com").should route_to("events#show")
    end

    it "routes to #index" do
      get("http://example.com").should route_to("events#index")
    end

  end
end
