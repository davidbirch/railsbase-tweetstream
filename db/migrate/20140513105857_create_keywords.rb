class CreateKeywords < ActiveRecord::Migration
  def change
    create_table :keywords do |t|
      t.string :keyword_value

      t.timestamps
    end
  end
end
