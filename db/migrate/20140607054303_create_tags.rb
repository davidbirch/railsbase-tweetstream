class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name, :null => false
      t.integer :tweet_id
      t.boolean :common_word, :default => false

      t.timestamps
    end
  end
end
