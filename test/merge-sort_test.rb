require "test_helper"
require "merge-sort"

describe "use merge_sort method" do
  it "sorts array from least to greatest" do
    array = []
    MergeSort.new.sort(array).must_equal []
  end
end