class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :tweet_text
      t.datetime :tweet_created_at
      t.column :tweet_guid, :bigint # manually changed from int to bigint
      t.string :tweet_source
      t.integer :twitter_user_id

      t.timestamps
    end
  end
end
