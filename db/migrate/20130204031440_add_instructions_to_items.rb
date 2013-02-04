class AddInstructionsToItems < ActiveRecord::Migration
  def change
    add_column :items, :instructions, :text
  end
end
