# frozen_string_literal: true

class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string  :title
      t.text    :description
      t.decimal :price, precision: 10, scale: 2
      t.integer :quantity
      t.string  :dimensions
      t.integer :year
      t.text  :materials, Array
      t.string  :images
      t.references :category

      t.timestamps
    end
  end
end
