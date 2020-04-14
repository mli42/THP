require_relative '../lib/00_Villani'

describe "the is_multiple of 3 and 5 function" do
  it "should return true" do
    expect(is_mult_3_5(3)).to eq(true)
    expect(is_mult_3_5(5)).to eq(true)
    expect(is_mult_3_5(51)).to eq(true)
    expect(is_mult_3_5(45)).to eq(true)
  end
  it "should return false" do
    expect(is_mult_3_5(2)).to eq(false)
    expect(is_mult_3_5(7)).to eq(false)
    expect(is_mult_3_5(64)).to eq(false)
  end
end

describe "the sum of is_mult(3, 5) from 1 to max function" do
  it "should return a int" do
    expect(sum_mult_3_5_from?(10)).to eq(23)
    expect(sum_mult_3_5_from?(11)).to eq(33)
  end
  it "should return a zero" do
    expect(sum_mult_3_5_from?(0)).to eq(0)
    expect(sum_mult_3_5_from?(3)).to eq(0)
  end
  it "should return an error" do
    expect(sum_mult_3_5_from?(-1)).to eq(nil)
    expect(sum_mult_3_5_from?(1.23)).to eq(nil)
    expect(sum_mult_3_5_from?("Something")).to eq(nil)
  end
end
