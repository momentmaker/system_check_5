class AddForeignKey < ActiveRecord::Migration
  def change
  	add_column :tasks, :tasklist_id, :integer, null: false
  end
end
