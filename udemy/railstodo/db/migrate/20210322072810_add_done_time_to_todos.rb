class AddDoneTimeToTodos < ActiveRecord::Migration[6.1]
  def change
    add_column :todos, :completion_date, :datetime
  end
end
