class UpdateShortenUrls < ActiveRecord::Migration[7.0]
  def change
    remove_column :shortened_urls, :user_id 
    add_column :shortened_urls, :user_id, :integer, null: false
  end
end
