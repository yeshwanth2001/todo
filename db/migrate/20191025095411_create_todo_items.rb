class CreateTodoItems < ActiveRecord::Migration[6.0]
  def change
    create_table :todo_items do |t|
      t.string :title
      t.boolean :completed, default: true

      t.timestamps
    end
  end
end
