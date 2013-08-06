require 'spec_helper'

describe XmlApiController do
  describe "GET 'index'" do
    let(:collector) { double(:event_collector) }

    it "returns http success" do
      get 'index', format: "xml"
      response.should be_success
    end

    it "assigns the EventCollector" do
      EventCollector.should_receive(:new) { collector }
      get 'index', format: "xml"
      assigns(:collection).should == collector
    end
  end
end
