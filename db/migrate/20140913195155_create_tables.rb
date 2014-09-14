class CreateTables < ActiveRecord::Migration
  def change
  	create_table :users do |t|
  		t.string :email, null: false
  		t.string :first_name
  		t.string :last_name

  		t.timestamps
  	end

  	create_table :tasks do |t|
  		t.string :name, null: false
  		t.string :description
  		t.date :due_date

  		t.timestamps
  	end

  	create_table :tasklists do |t|
  		t.string :name, null: false
  		t.string :description

  		t.timestamps
  	end

  	create_table :associations do |t|
  		t.integer :user_id, null: false
  		t.integer :task_id, null: false
  		t.integer :tasklist_id, null: false

  		t.timestamps
  	end
  end
end
