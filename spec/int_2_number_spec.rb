require_relative 'support/spec_helper'

describe Int2Number do

  before :each do
    @int_2_number = Int2Number.new
  end

  it "raises exception if the input is a string" do
    expect { @int_2_number.as_number('not_an_int') }.to raise_error("Parameter must be an int.")
  end

  it "returns the numbers for a single digit integer" do
    @int_2_number.as_number(1).should eq("one")
    @int_2_number.as_number(2).should eq("two")
    @int_2_number.as_number(3).should eq("three")
    @int_2_number.as_number(4).should eq("four")
    @int_2_number.as_number(5).should eq("five")
    @int_2_number.as_number(6).should eq("six")
    @int_2_number.as_number(7).should eq("seven")
    @int_2_number.as_number(8).should eq("eight")
    @int_2_number.as_number(9).should eq("nine")
    @int_2_number.as_number(0).should eq("zero")
  end

  it "returns works with the numbers between 10 and 19" do
    @int_2_number.as_number(10).should eq("ten")
    @int_2_number.as_number(11).should eq("eleven")
    @int_2_number.as_number(12).should eq("twelve")
    @int_2_number.as_number(13).should eq("thirteen")
    @int_2_number.as_number(14).should eq("fourteen")
    @int_2_number.as_number(15).should eq("fifteen")
    @int_2_number.as_number(16).should eq("sixteen")
    @int_2_number.as_number(17).should eq("seventeen")
    @int_2_number.as_number(18).should eq("eighteen")
    @int_2_number.as_number(19).should eq("nineteen")
  end

  it "works with the multiples of ten under 100" do
    @int_2_number.as_number(20).should eq("twenty")
    @int_2_number.as_number(30).should eq("thirty")
    @int_2_number.as_number(40).should eq("fourty")
    @int_2_number.as_number(50).should eq("fifty")
    @int_2_number.as_number(60).should eq("sixty")
    @int_2_number.as_number(70).should eq("seventy")
    @int_2_number.as_number(80).should eq("eighty")
    @int_2_number.as_number(90).should eq("ninety")
  end

  it "works not just for multiplies of ten between 20 and 100" do
    @int_2_number.as_number(21).should eq("twentyone")
    @int_2_number.as_number(32).should eq("thirtytwo")
    @int_2_number.as_number(43).should eq("fourtythree")
    @int_2_number.as_number(54).should eq("fiftyfour")
    @int_2_number.as_number(65).should eq("sixtyfive")
    @int_2_number.as_number(76).should eq("seventysix")
    @int_2_number.as_number(87).should eq("eightyseven")
    @int_2_number.as_number(98).should eq("ninetyeight")
    @int_2_number.as_number(99).should eq("ninetynine")
  end

  it "works with numbers between 999 and 100" do
    @int_2_number.as_number(100).should eq("one hundred")
    @int_2_number.as_number(221).should eq("two hundred and twentyone")
    @int_2_number.as_number(999).should eq("nine hundred and ninetynine")
    @int_2_number.as_number(567).should eq("five hundred and sixtyseven")
    @int_2_number.as_number(701).should eq("seven hundred and one")
  end
  
  it "works for numbers between 1000 and 1000 0000" do
     @int_2_number.as_number(1110).should eq("one thousand one hundred and ten")
     @int_2_number.as_number(9999).should eq("nine thousand nine hundred and ninetynine")
     @int_2_number.as_number(123999).should eq("one hundred and twentythree thousand nine hundred and ninetynine")
  end
  
  it "works for numbers bigger than 1000 000" do
     @int_2_number.as_number(1456034).should eq("one million four hundred and fiftysix thousand and thirtyfour")
  end
end