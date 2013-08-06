require 'spec_helper'

describe EventsController do

  describe "GET 'index'" do
    let(:collector) { double(:event_collector) }

    it "returns http success" do
      get 'index'
      expect(response).to be_success
    end

    it "assigns the EventCollector" do
      EventCollector.should_receive(:new) { collector }
      get 'index'
      expect(assigns :collection).to eq collector
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
      expect(response).to be_success
    end

    it "assigns the event and collector" do
      get 'show'

      expect(assigns :event).to eq event
      expect(assigns :event).to be_decorated
      expect(assigns :collection).to eq collector
    end
  end
end
