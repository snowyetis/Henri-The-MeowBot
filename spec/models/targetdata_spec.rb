require "active_record"
require "models/targetdata"

describe TargetData, :type => :model do

  describe "#tweeter" do
    it "returns name" do
      TargetData.create
      targetdatass = Tweeter(:one)
    end
  end
end
