require "spec_helper"

describe "routing for legacy XML API" do
  it "routes to xml#index" do
    expect(get: "/xml-api/?show=complete").to route_to({
      controller: "xml_api",
      action: "index",
      format: "xml",
    })
  end
end
