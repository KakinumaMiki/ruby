class AddDoneTimeToTodos < ActiveRecord::Migration[6.1]
  def change
    add_column :todos, :done_time, :datetime
  end
end
