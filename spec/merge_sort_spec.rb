require "spec_helper"
require_relative "../lib/merge_sort"

RSpec.describe '#merge_sort' do

  it 'returns an empty array with the array is empty' do
    expect(merge_sort([])).to eq([])
  end

end