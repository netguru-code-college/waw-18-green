require 'rails_helper'

RSpec.describe Bar do
  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:address) }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_length_of(:name) }
    it { is_expected.to validate_length_of(:address) }
    it { is_expected.to validate_length_of(:description) }
  end
end
