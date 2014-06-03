class CreateCategoriesTweets < ActiveRecord::Migration
  def change
    create_table :categories_tweets, id: false do |t|
      t.belongs_to :category
      t.belongs_to :tweet

    end
  end
end
