class CreateKbArticles < ActiveRecord::Migration
  def change
    create_table :kb_articles do |t|
      t.string :title
      t.string :summary
      t.text :body
      t.integer :position
      t.integer :section_id

      t.timestamps
    end
  end
end
