# frozen_string_literal: true

class CreateMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :materials do |t|
      t.text :title, Array, unique: true, null: false

      t.timestamps
    end
  end
end
