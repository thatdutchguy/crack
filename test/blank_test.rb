require 'test_helper'

class BlankTest < Test::Unit::TestCase
  context "blank?" do
    should "returns false for Numeric" do
      2.blank?.should == false
    end
    
    should "returns true for NilClass" do
      nil.blank?.should == true
    end

    should "returns false for TrueClass" do
      true.blank?.should == false
    end
    
    should "returns true for FalseClass" do
      false.blank?.should == true
    end
    
    should "returns true for empty strings" do
      "".blank?.should == true
      "hello".blank?.should == false
    end

    should "returns true for empty objects" do
      {}.blank?.should == true
      [].blank?.should == true
      {:a=>1}.blank?.should == false
      [nil].blank?.should == false
    end
  end
end