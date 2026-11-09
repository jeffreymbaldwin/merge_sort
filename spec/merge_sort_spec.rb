require "spec_helper"
require_relative "../lib/merge_sort"

RSpec.describe '#merge_sort' do

  it 'returns an empty array when the array is empty' do
    expect(merge_sort([])).to eq([])
  end

  it 'returns an array with one element if the array only has one element' do
    expect(merge_sort([73])).to eq([73])
  end

  it 'returns the same array when the array is already sorted' do
    expect(merge_sort([1, 2, 3, 4, 5])).to eq([1, 2, 3, 4, 5])
  end

  it 'sorts and returns an array in numerical order' do
    expect(merge_sort([3, 2, 1, 13, 8, 5, 0, 1])).to eq([0, 1, 1, 2, 3, 5, 8, 13])
  end

  it 'sorts and returns an array in numerical order when the values are larger' do
    expect(merge_sort([105, 79, 100, 110])).to eq([79, 100, 105, 110])
  end

end

RSpec.describe '#divide_point' do
  it 'returns the index number that is halfway of an array size rounded up' do
    expect(divide_point([1, 2, 3, 4, 5])).to eq(3)
  end
end



