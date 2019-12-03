# frozen_string_literal: true

class BookDecorator < Draper::Decorator
  SHORT_DESCRIPTION = 100
  DESCRIPTION = (200..-1).freeze
  delegate_all

  def book_material
    materials.map(&:title).join(', ')
  end

  def authors_name
    authors.map{ |author| author.decorate.full_name }.join(', ')
  end

  def short_description
    description.first(SHORT_DESCRIPTION)
  end

  def full_description
    description[DESCRIPTION]
  end

  def other_images
    image
  end

end
