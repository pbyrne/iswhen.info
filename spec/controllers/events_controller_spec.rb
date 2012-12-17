require 'spec_helper'

describe EventsController do

  describe "GET 'index'" do
    let(:collector) { stub(:event_collector) }

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
    let(:event) { stub(:event) }
    let(:subdomain) { "foo" }
    let(:collector) { stub(:event_collector) }

    before do
      request.host = "#{subdomain}.example.host"
      Event.stub(:for_subdomain)
    end

    it "returns http success" do
      get 'show'
      response.should be_success
    end

    it "assigns the Event" do
      Event.should_receive(:for_subdomain).with(subdomain) { event }
      get 'show'
      assigns(:event).should == event
    end

    it "assigns to EventCollector" do
      EventCollector.should_receive(:new) { collector }
      get 'show'
      assigns(:collection).should == collector
    end
  end
end
