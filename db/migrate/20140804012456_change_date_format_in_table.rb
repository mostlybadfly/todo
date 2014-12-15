class ChangeDateFormatInTable < ActiveRecord::Migration
  def change
    change_column(:tasks, :completed, :datetime)
  end
end
