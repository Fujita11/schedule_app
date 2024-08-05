class ChangeIsAllDayDefaultInPosts < ActiveRecord::Migration[6.1]
  def change
    change_column_default :posts, :is_all_day, false
  end
end