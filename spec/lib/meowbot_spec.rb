require "meowbot"

describe MeowBot do

  before(:each) do
    @imageList = MeowBot.retrieve_images
  end

  describe "retrieve_images" do
    it "equals 7" do
      expect(@imageList.count).to eq 7
    end
  end

  describe "saves_data" do
    it "saves successfully" do
      
    end
  end

end
