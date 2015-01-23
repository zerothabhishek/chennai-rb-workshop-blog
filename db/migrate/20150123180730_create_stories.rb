class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title
      t.text :content
      t.text :tags

      t.timestamps null: false
    end
  end
end
