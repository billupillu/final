class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.integer :city_id
      t.string :name

      t.timestamps null: false
    end
   add_index('areas', ['city_id','name'])
  end
end
