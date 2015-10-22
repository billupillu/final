class CreatePriestAreaships < ActiveRecord::Migration
  def change
    create_table :priest_areaships do |t|
      t.integer :priest_profile_id
      t.integer :area_id

      t.timestamps null: false
    end
    add_index('priest_areaships',['priest_profile_id', 'area_id'])
  end
end
