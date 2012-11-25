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
    it "returns http success" do
      get 'show'
      response.should be_success
    end
  end

end
