class CreateNovels < ActiveRecord::Migration
  def change
    create_table :novels do |t|
      t.string :title
      t.text :content
      t.boolean :published
      t.text :tags
      t.text :pricing

      t.timestamps null: false
    end
  end
end
