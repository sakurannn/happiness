class AddLikesCountToHappies < ActiveRecord::Migration[5.2]
  def change
    add_column :happies, :likes_count, :integer
  end
end
