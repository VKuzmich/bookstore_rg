# frozen_string_literal: true

require 'rails_helper'

RSpec.describe AuthorsBook, type: :model do
  context 'with relationships' do
    it { is_expected.to belong_to(:author) }
    it { is_expected.to belong_to(:book) }
  end
end
