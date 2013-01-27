require "spec_helper"

describe "routing for events" do
  let!(:event) { FactoryGirl.create(:event) }

  it "routes by default to events#index" do
    expect(get: "http://example.com").to route_to({
      controller: "events",
      action: "index",
    })
  end

  it "routes with www subdomain to events#index" do
    expect(get: "http://www.example.com").to route_to({
      controller: "events",
      action: "index",
    })
  end

  it "routes with valid event subdomain to events#show" do
    expect(get: "htt://#{event.shortname}.example.com").to route_to({
      controller: "events",
      action: "show",
    })
  end
end
