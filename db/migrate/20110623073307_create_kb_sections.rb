class CreateKbSections < ActiveRecord::Migration
  def change
    create_table :kb_sections do |t|
      t.string :title
      t.text :desc
      t.integer :position

      t.timestamps
    end
  end
end
