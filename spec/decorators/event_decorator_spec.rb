require "spec_helper"

describe EventDecorator do
  let(:event) { FactoryGirl.build(:event) }

  # subject { EventDecorator.new(event) }

  it "properly infers the decorator" do
    event.decorate.should be_decorated_with EventDecorator
  end

  it "properly decorates by hand" do
    EventDecorator.new(event).should be_decorated_with EventDecorator
  end
end
