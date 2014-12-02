require_relative "../business_logic_test_helper"

describe App do

  describe "bigger and smaller" do
    it "should return the biggest element of an array" do
      [1, -1000, 400, 555, 33, 98].biggest.must_equal 555
    end
    it "should return the smallest element of an array" do
      [1, -1000, 400, 555, 33, 98].smallest.must_equal -1000
    end
  end

  describe "convert string for use in css" do
    it "should strip away non-alphanumeric characters" do
      "a b,c.d!1\"2£3:".for_css.must_equal "a-b-c-d-1-2-3"
    end
    it "should reduce multiuple non-alphanumeric charaters to one dash" do
      "a     b!\"£$%^&*(),. ----____===+++@~}{[]<>/\\:;# c".for_css.must_equal "a-b-c"
    end
    it "should remove non-alphanumeric characters, as well as dashes from the front and end of the string" do
      "--__  abc!!!!!".for_css.must_equal "abc"
    end
    it "should downcase the string as well" do
      "AÆBØCÅ".for_css.must_equal "a-b-c"
    end
    it "should not remove any alphanumeric characters (or dashes, except if first or last)" do
      "-ABCDEFGHIJKLMNOPQRSTUVWXYZ-1234567890-abcdefghijklmnopqrstuvwxyz-".for_css.must_equal "abcdefghijklmnopqrstuvwxyz-1234567890-abcdefghijklmnopqrstuvwxyz"
    end
    it "should replace the original string" do
      a = "ABC/DEF/GHI"
      a.for_css!
      a.must_equal "abc-def-ghi"
    end
  end

  describe "convert to boolean" do
    it "should handle boolean" do
      false.to_boolean.must_equal false
      true.to_boolean.must_equal true
    end
    it "should handle numbers, any positive non-zero number is true, enything else is false" do
      -1.to_boolean.must_equal false
      0.to_boolean.must_equal false
      1.to_boolean.must_equal true
      0.0000001.to_boolean.must_equal true
      -13.5.to_boolean.must_equal false
      -0.2.to_boolean.must_equal false
      8.333.to_boolean.must_equal true
    end
    it "should handle strings, 'true', 'yes' and '1' is true, anything else is false" do
      "".to_boolean.must_equal false
      "false".to_boolean.must_equal false
      "XYZTRUEXYZ".to_boolean.must_equal false
      "true!".to_boolean.must_equal false
      "0".to_boolean.must_equal false
      "1".to_boolean.must_equal true
      "true".to_boolean.must_equal true
      "True".to_boolean.must_equal true
      "truE".to_boolean.must_equal true
      "TRUE".to_boolean.must_equal true
      "yes".to_boolean.must_equal true
      "Yes".to_boolean.must_equal true
      "yEs".to_boolean.must_equal true
      "YES".to_boolean.must_equal true
    end
    it "should handle arrays and hashes, empty is false, anything else is true" do
      [].to_boolean.must_equal false
      ['a'].to_boolean.must_equal true
      [''].to_boolean.must_equal true
      {}.to_boolean.must_equal false
      {:a => 'a'}.to_boolean.must_equal true
      {false => false}.to_boolean.must_equal true
    end
  end

end
