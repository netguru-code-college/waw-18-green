require 'rails_helper'

describe BarDecorator do
  let(:bar) { create(:bar) }
  subject { described_class.new(bar) }

  describe "#username" do
    it 'should return username' do
      expect(subject.username).to eq("bill")
    end
  end
end