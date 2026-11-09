require "spec_helper"
require_relative "../lib/merge_sort"

RSpec.describe '#merge_sort' do

  it 'returns an empty array with the array is empty' do
    expect(merge_sort([])).to eq([])
  end

  it 'returns an array with one element if the array only has one element' do
    expect(merge_sort([73])).to eq([73])
  end

  it 'returns the same array when the array is already sorted' do
    expect(merge_sort([1, 2, 3, 4, 5])).to eq([1, 2, 3, 4, 5])
  end

end

RSpec.describe '#divide_point' do
  it 'returns the index number that is halway of an array size rounded up' do
    expect(divide_point([1, 2, 3, 4, 5])).to eq(3)
  end
end



# TEST EXAMPLES
# merge_sort([1, 2, 3, 4, 5]) → [1, 2, 3, 4, 5]
# merge_sort([3, 2, 1, 13, 8, 5, 0, 1]) → [0, 1, 1, 2, 3, 5, 8, 13]
# merge_sort([105, 79, 100, 110]) → [79, 100, 105, 110]