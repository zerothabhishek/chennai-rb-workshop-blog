class CreateRStories < ActiveRecord::Migration
  def change
    create_table :r_stories do |t|
      t.string :title
      t.text :content
      t.text :tags
      t.boolean :published

      t.timestamps null: false
    end
  end
end
