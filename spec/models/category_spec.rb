# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Category, type: :model do
  context 'with relationships' do
    it { is_expected.to have_many(:books).dependent(:destroy) }
  end

  context 'when validates' do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_length_of(:title).is_at_most(Category::TITLE_LENGTH) }
  end
end
