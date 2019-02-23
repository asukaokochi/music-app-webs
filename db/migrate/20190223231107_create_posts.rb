class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :comment
      t.string :artist
      t.string :album
      t.string :track
      t.string :music_image
      t.string :post_user
      t.string :sample_music
      t.integer :user_id
    end
  end
end
