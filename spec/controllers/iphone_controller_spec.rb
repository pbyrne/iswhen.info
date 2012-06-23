require 'spec_helper'

describe IphoneController do

  describe "GET 'index'" do
    let(:event) { create(:event) }
    let(:events) { stub }
    let(:catalog) { stub }

    it "returns http success" do
      get 'index'
      response.should be_success
      assigns
    end

    it "assigns the catalog" do
      Event.should_receive(:with_observances).and_return(events)
      Catalog.should_receive(:new).with(events).and_return(catalog)
      get :index
      assigns(:catalog).should == catalog
    end
  end

end
