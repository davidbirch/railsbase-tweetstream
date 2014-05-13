class CreateFilters < ActiveRecord::Migration
  def change
    create_table :filters do |t|
      t.string :filter_value

      t.timestamps
    end
  end
end
