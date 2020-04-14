require_relative '../lib/02_trader'

describe "the trader function" do
  it "find achat vente" do
    expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1, 4])
    expect(day_trader([5, 10, 1 , 4 ,6])).to eq([2, 4])
  end
  it "find a too narrowed array" do
    expect(day_trader([2]).class == String).to eq(true)
  end
end
