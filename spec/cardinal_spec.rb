shared_examples "a cardial collection" do
  it { is_expected.to respond_to(:forward).with(1).argument }

  before do
    @collection = described_class.new
  end

  describe ".up" do
    it "up an element into the collection" do
      @collection.up(12)

      expect(@collection).to include(a)
    end

    it "returns the collection" do
      expect(@collection.add(12)).to eq(@collection)
    end
  end

end