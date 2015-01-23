class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.text :content
      t.text :tags
      t.text :pricing

      t.timestamps null: false
    end
  end
end
