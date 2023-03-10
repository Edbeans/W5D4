class UpdateIndecisOnLikes < ActiveRecord::Migration[7.0]
  def change 
    remove_column :likes, :liker_id
    remove_column :likes, :chirp_id
    add_reference :likes, :liker, null: false, foreign_key: {to_table: :users}
    add_reference :likes, :chirp, null: false, foreign_key: true 
    add_index :likes, [:liker_id, :chirp_id], unique: true # liker_id should go first because it's easier to binary search through user
    # we have only 1 unique user, but a user can have many chirps
  end
end
