require_relative '../lib/01_caesar_cipher'

describe "the ceasar function" do
  it "should convert these strings" do
    expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
  end
end
