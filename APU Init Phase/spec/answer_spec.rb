require 'spec_helper'
require_relative '../answer.rb'

describe Grid do
  subject { Grid.new }
  context '.fill' do
    it 'fills out @nodes array with non-blank nodes' do
      subject.fill
      # 00
      # 0.
      expect(subject.nodes.size).to eq(3)
    end
    it 'cleans @nodes from nils'
  end
  context '.neighbours' do
    it 'finds closest neighbour to the right'
    it 'finds closest neighbour to the bottom'
  end
  context 'No neighbour found' do
    it 'returns BLANK if no neighbour to the right'
    it 'returns BLANK if no neighbour to the bottom'
  end
end

describe 'solution' do
  it 'returns a strings with coordinates'
end
