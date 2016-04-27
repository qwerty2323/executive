require 'spec_helper'
require_relative '../answer.rb'

describe Scan do
  subject { Scan.new([["0", "0", "0"], ["0", ".", "0"], [".", "0", "."]]) }
  context '.new' do
    it 'creates an array of nodes' do
      # 00
      # 0.
      expect(subject.nodes.size).to eq(6)
    end
  end
  context '.neighbours' do
    it 'finds closest neighbour to the bottom' do
      expect(subject.v_neighbour(0, 0).to_s).to eq('0 1')
    end
    it 'finds closest neighbour to the right' do
      expect(subject.h_neighbour(0, 0).to_s).to eq('1 0')
    end
    it 'returns coordinates of both neighbours' do
      expect(subject.neighbours(0, 0)).to eq('1 0 0 1')
    end
  end
  context 'No neighbour found' do
    it 'returns BLANK if no neighbour to the right' do
      expect(subject.h_neighbour(3, 0).to_s).to eq('')
    end
    it 'returns BLANK if no neighbour to the bottom' do
      expect(subject.v_neighbour(0, 2).to_s).to eq('')
    end
  end
end
