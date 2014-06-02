class CreateCategoriesKeywords < ActiveRecord::Migration
  def change
    create_table :categories_keywords, id: false do |t|
      t.belongs_to :category
      t.belongs_to :keyword
    end
  end
end
