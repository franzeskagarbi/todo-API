class CreateTodoLists < ActiveRecord::Migration[7.1]
  def change
    create_table :todo_lists do |t|
      t.string :title
      t.references :user, null: false, foreign_key: true  # This adds user_id to todo_lists
      t.timestamps
    end
  end
end
