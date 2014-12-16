class AddDefaultToDoneAttribute < ActiveRecord::Migration
  def change
    change_column_default(:tasks, :done, false)
  end
end
