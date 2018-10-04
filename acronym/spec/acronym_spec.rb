require_relative '../acronym'
describe "#acronym" do
  it 'should return the first letters of a sentence' do
    actual = acronym("What the fuck")
    expected = "WTF"
    expect(actual).to eq(expected)
  end

end
