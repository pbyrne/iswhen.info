require 'spec_helper'

describe Observance do
  context "#valid?" do
    it { should validate_presence_of(:start_at) }
    it { should validate_presence_of(:event_id) }
  end

  it { should belong_to(:event) }
end
