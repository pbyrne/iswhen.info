require 'spec_helper'

describe Event do
  context "#valid?" do
    context "on shortname" do
      let(:orig) { FactoryGirl.create(:event) }
      let(:duplicate) { FactoryGirl.build(:event, shortname: orig.shortname) }
      let(:unique) { FactoryGirl.build(:event, shortname: "somethingelseentirely") }

      it "must be unique" do
        duplicate.valid?
        duplicate.errors[:shortname].should_not be_blank

        unique.valid?
        unique.errors[:shortname].should be_blank
      end

      it "must be a single word" do
        orig.shortname = "foo"
        orig.valid?
        orig.errors[:shortname].should be_blank

        orig.shortname = "this is not right"
        orig.valid?
        orig.errors[:shortname].should_not be_blank
      end

      it "cannot be blank" do
        orig.shortname = "foo"
        orig.valid?
        orig.errors[:shortname].should be_blank

        orig.shortname = nil
        orig.valid?
        orig.errors[:shortname].should_not be_blank
      end
    end
  end
end
