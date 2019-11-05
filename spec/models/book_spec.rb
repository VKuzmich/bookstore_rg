# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Book, type: :model do
  context 'with relationships' do
    it { is_expected.to belong_to(:category) }

    it { is_expected.to have_many(:authors_books).dependent(:destroy) }
    it { is_expected.to have_many(:authors).through(:authors_books) }

    it { is_expected.to have_many(:books_materials).dependent(:destroy) }
    it { is_expected.to have_many(:materials).through(:books_materials) }
  end

  context 'when validates' do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_presence_of(:price) }
    it { is_expected.to validate_presence_of(:year) }
    it { is_expected.to validate_presence_of(:quantity) }
    it { is_expected.to validate_presence_of(:category_id) }

    it { is_expected.to validate_numericality_of(:price).is_greater_than_or_equal_to(Book::MIN_PRICE) }
    it { is_expected.to validate_numericality_of(:price).is_less_than_or_equal_to(Book::MAX_PRICE) }

    it { is_expected.to validate_numericality_of(:quantity).only_integer }
    it { is_expected.to validate_numericality_of(:quantity).is_greater_than_or_equal_to(Book::MIN_QUANTITY) }
    it { is_expected.to validate_numericality_of(:quantity).is_less_than_or_equal_to(Book::MAX_QUANTITY) }
  end
end
