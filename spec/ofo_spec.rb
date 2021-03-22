require_relative "../ofo"

RSpec.describe OneFiveOne do
  it "parses CLI as 151" do
    expect(OneFiveOne.new("CLI").generate).to eq 151
  end

  it "parses IIi as 3" do
    expect(OneFiveOne.new("III").generate).to eq 3
  end

  it "parses McMxIv as 1914" do
    expect(OneFiveOne.new("MCMXIV").generate).to eq 1914
  end

  it "parses LIP as error" do
    expect { OneFiveOne.new("LIP").generate }.to raise_error UnexpectedCharacter
  end

  context "bad style but we'll allow it" do
    it "parses IIIII as 5" do
      expect(OneFiveOne.new("IIIII").generate).to eq 5
    end
    it "parses IIX as 8" do
      expect(OneFiveOne.new("IIX").generate).to eq 8
    end
  end
end
