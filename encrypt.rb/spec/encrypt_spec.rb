require_relative '../encrypt'

describe "#encrypt" do
  it "Should return encrypted sentence" do
    test = encrypt("DEF")
    result = "ABC"
    expect(test).to eq(result)
  end

  it "Should return encrypted sentence with space" do
    test = encrypt("DEF DEF")
    result = "ABC ABC"
    expect(test).to eq(result)
  end
end
