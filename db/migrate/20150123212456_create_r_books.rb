class CreateRBooks < ActiveRecord::Migration
  def change
    create_table :r_books do |t|
      t.string :title
      t.text :content
      t.text :tags
      t.text :pricing
      t.boolean :published

      t.timestamps null: false
    end
  end
end
