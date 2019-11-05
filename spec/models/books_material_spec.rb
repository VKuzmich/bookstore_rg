# frozen_string_literal: true

require 'rails_helper'

RSpec.describe BooksMaterial, type: :model do
  context 'with relationships' do
    it { is_expected.to belong_to(:book) }
    it { is_expected.to belong_to(:material) }
  end
end
