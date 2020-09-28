require "colorful"

describe "colorful?" do
  it "returns false if provided with something other than a number" do
    expect(colorful?("not_a_number_but_a_string")).to eq false 
  end

  colorful_numbers = [ 5, 34, 263 ]
  not_colorful_numbers = [ 70, 236 ]

  colorful_numbers.each do |number|
    it "returns true for #{number} which is colorful" do
      expect(colorful?(number)).to eq true 
    end
  end

  not_colorful_numbers.each do |number|
    it "returns false for #{number} which is not colorful" do
      expect(colorful?(number)).to eq false 
    end
  end
end
