require "test_helper"
require "merge-sort"

describe "use merge_sort method" do
  it "sorts array from least to greatest" do
    array = [6,33,42,8,100,13, 66, -85, 0.8]
    sorted_array = merge(array)
    sorted_array.must_equal [-85, 0.8, 6, 8, 13, 33, 42, 66, 100]
  end
end