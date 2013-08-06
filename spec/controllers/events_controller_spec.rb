require 'spec_helper'

describe EventsController do

  describe "GET 'index'" do
    let(:collector) { double(:event_collector) }

    it "returns http success" do
      get 'index'
      response.should be_success
    end

    it "assigns the EventCollector" do
      EventCollector.should_receive(:new) { collector }
      get 'index'
      assigns(:collection).should == collector
    end
  end

  describe "GET 'show'" do
    let(:event) { FactoryGirl.build(:event) }
    let(:subdomain) { "foo" }
    let(:collector) { double(:event_collector) }

    before do
      request.host = "#{subdomain}.example.host"
      Event.stub(:for_subdomain)
      Event.stub(:for_subdomain).with(subdomain) { event }
      EventCollector.stub(:except).with(event) { collector }
    end

    it "returns http success" do
      get 'show'
      response.should be_success
    end

    it "assigns the event and collector" do
      get 'show'

      assigns(:event).should == event
      assigns(:event).should be_decorated
      assigns(:collection).should == collector
    end
  end
end
