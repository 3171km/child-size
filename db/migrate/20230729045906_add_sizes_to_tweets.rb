class AddSizesToTweets < ActiveRecord::Migration[6.0]
  def change
    add_column :tweets, :tops_size, :string
    add_column :tweets, :bottoms_size, :string
    add_column :tweets, :shoes_size, :string
  end
end
