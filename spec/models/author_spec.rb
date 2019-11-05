# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Author, type: :model do
  context 'with relationships' do
    it { is_expected.to have_many(:authors_books).dependent(:destroy) }
    it { is_expected.to have_many(:books).through(:authors_books) }
  end

  context 'when validates' do
    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }

    it { is_expected.to validate_length_of(:first_name).is_at_most(Author::NAMES_LENGTH) }
    it { is_expected.to validate_length_of(:last_name).is_at_most(Author::NAMES_LENGTH) }
  end
end
