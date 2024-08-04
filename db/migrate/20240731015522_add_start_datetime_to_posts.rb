class ChangeDatetimeToDateInPosts < ActiveRecord::Migration[6.1]
  def change
    change_column :posts, :start_datetime, :date
    change_column :posts, :end_datetime, :date
  end
end
