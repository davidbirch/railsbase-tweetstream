class CreateFilters < ActiveRecord::Migration
  def change
    create_table :filters do |t|
      t.column :filter_value, :bigint # manually changed from int to bigint

      t.timestamps
    end
  end
end
