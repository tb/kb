class AddAncestryToKbSections < ActiveRecord::Migration
  def change
    add_column :kb_sections, :ancestry, :string
    add_column :kb_sections, :ancestry_depth, :integer, :default => 0
    add_index :kb_sections, :ancestry
  end
end
