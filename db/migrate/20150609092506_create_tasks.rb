class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :content
      t.boolean :performed, default: false
      # set performed to false as default for creation of new task

      t.timestamps null: false
    end
  end
end
