class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.datetime :start_datetime
      t.datetime :end_datetime
      t.boolean :is_all_day
      t.timestamps
    end
  end
end
