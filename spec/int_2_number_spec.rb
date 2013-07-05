require_relative 'support/spec_helper'

describe Int2Number do
  
  before :each do
    @int_2_number = Int2Number.new
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
end