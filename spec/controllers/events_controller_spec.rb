require 'spec_helper'

describe EventsController do
  let(:event) { create(:event) }
  let(:events) { stub }
  let(:catalog) { stub }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # EventsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "renders index" do
      get :index
      response.should render_template "index"
    end

    it "assigns the catalog" do
      Event.should_receive(:with_observances).and_return(events)
      Catalog.should_receive(:new).with(events).and_return(catalog)
      get :index
      assigns(:catalog).should == catalog
    end
  end

  describe "GET show" do
    it "assigns the requested event as @event" do
      Event.should_receive(:with_observances).and_return(events)
      Catalog.should_receive(:new).with(events, event).and_return(catalog)
      request.stub(subdomain: event.to_param)

      get :show, {}, valid_session

      assigns(:event).should == event
      assigns(:catalog).should == catalog
    end
  end
end
