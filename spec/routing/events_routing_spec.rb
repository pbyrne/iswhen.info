require "spec_helper"

describe EventsController do
  describe "routing" do

    it "routes subdomains to #show" do
      get("http://foo.example.com").should route_to("events#show")
    end

    it "routes www subdomain to #index" do
      get("http://www.example.com").should route_to("events#index")
    end

    it "routes no subdomain to #index" do
      get("http://example.com").should route_to("events#index")
    end

  end
end
