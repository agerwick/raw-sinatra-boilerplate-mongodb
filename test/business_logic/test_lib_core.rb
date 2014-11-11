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

end
