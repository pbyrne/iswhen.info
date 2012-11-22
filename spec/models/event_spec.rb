require 'spec_helper'

describe Event do
  context "#valid?" do
    let(:event) { FactoryGirl.create(:event) }

    context "on shortname" do
      let(:duplicate) { FactoryGirl.build(:event, shortname: event.shortname) }
      let(:unique) { FactoryGirl.build(:event, shortname: "somethingelseentirely") }

      it "must be unique" do
        duplicate.valid?
        duplicate.errors[:shortname].should_not be_blank

        unique.valid?
        unique.errors[:shortname].should be_blank
      end

      it "must be a single word" do
        event.shortname = "foo"
        event.valid?
        event.errors[:shortname].should be_blank

        event.shortname = "this is not right"
        event.valid?
        event.errors[:shortname].should_not be_blank
      end

      it "cannot be blank" do
        event.shortname = "foo"
        event.valid?
        event.errors[:shortname].should be_blank

        event.shortname = nil
        event.valid?
        event.errors[:shortname].should_not be_blank
      end
    end

    context "on longname" do
      it "cannot be blank" do
        event.longname = "foo"
        event.valid?
        event.errors[:longname].should be_blank

        event.longname = nil
        event.valid?
        event.errors[:longname].should_not be_blank
      end
    end

    context "on name" do
      it "cannot be blank" do
        event.name = "Something"
        event.valid?
        event.errors[:name].should be_blank

        event.name = nil
        event.valid?
        event.errors[:name].should_not be_blank
      end
    end
  end
end
