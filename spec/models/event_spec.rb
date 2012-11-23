require 'spec_helper'

describe Event do
  context "#valid?" do
    let(:event) { FactoryGirl.build(:event) }

    context "on shortname" do
      let(:duplicate) { FactoryGirl.build(:event, shortname: event.shortname) }
      let(:unique) { FactoryGirl.build(:event, shortname: "somethingelseentirely") }

      it "must be unique" do
        event.save

        duplicate.valid?
        duplicate.errors.should include :shortname

        unique.valid?
        unique.errors.should_not include :shortname
      end

      it "must be a single word" do
        event.shortname = "foo"
        event.valid?
        event.errors.should_not include :shortname

        event.shortname = "this is not right"
        event.valid?
        event.errors.should include :shortname
      end

      it "cannot be blank" do
        event.shortname = "foo"
        event.valid?
        event.errors.should_not include :shortname

        event.shortname = nil
        event.valid?
        event.errors.should include :shortname
      end
    end

    context "on longname" do
      it "cannot be blank" do
        event.longname = "foo"
        event.valid?
        event.errors.should_not include :longname

        event.longname = nil
        event.valid?
        event.errors.should include :longname
      end
    end

    context "on name" do
      it "cannot be blank" do
        event.name = "Something"
        event.valid?
        event.errors.should_not include :name

        event.name = nil
        event.valid?
        event.errors.should include :name
      end
    end
  end
end
