# frozen_string_literal: true

ActiveRecord::Schema.define(version: 2019_10_02_073_430) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'authors', force: :cascade do |t|
    t.string 'first_name', null: false
    t.string 'last_name', null: false
    t.text 'biography'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'authors_books', force: :cascade do |t|
    t.bigint 'book_id'
    t.bigint 'author_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['author_id'], name: 'index_authors_books_on_author_id'
    t.index ['book_id'], name: 'index_authors_books_on_book_id'
  end

  create_table 'books', force: :cascade do |t|
    t.string 'title'
    t.text 'description'
    t.decimal 'price', precision: 10, scale: 2
    t.integer 'quantity'
    t.string 'dimensions'
    t.integer 'year'
    t.string 'materials'
    t.string 'image'
    t.bigint 'category_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['category_id'], name: 'index_books_on_category_id'
  end

  create_table 'books_materials', force: :cascade do |t|
    t.bigint 'book_id'
    t.bigint 'material_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['book_id'], name: 'index_books_materials_on_book_id'
    t.index ['material_id'], name: 'index_books_materials_on_material_id'
  end

  create_table 'categories', force: :cascade do |t|
    t.string 'title', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'materials', force: :cascade do |t|
    t.string 'title'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'users', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
  end

  add_foreign_key 'authors_books', 'authors'
  add_foreign_key 'authors_books', 'books'
  add_foreign_key 'books_materials', 'books'
  add_foreign_key 'books_materials', 'materials'
end
