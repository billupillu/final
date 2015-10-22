class CreatePriestProfiles < ActiveRecord::Migration
  def change
    create_table :priest_profiles do |t|
      t.string :name
      t.string :phone_wrk
      t.string :phone_pr
      t.string :religion
      #t.string :icon, default: "default.png"
      t.string :brief, limit: 200
      t.text :description

      t.timestamps null: false
    end
    add_index('priest_profiles', 'religion')
  end
end
