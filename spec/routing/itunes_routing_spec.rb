require "spec_helper"

describe "routing to iTunes" do
  it "should respond to /iphone" do
    pending "No real way to spec within rspec a redirect-only route"
    # NOTE submit a pull request to rspec-rails to incorporate redirect_to into routing specs
    # expect(get: "/iphone").to redirect_to "http://itunes.apple.com/us/app/iswhen/id313199425?mt=8"
  end
end
