class CreateBandMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :band_members do |t|
      t.string :name
      t.text :bio
      t.string :role

      t.timestamps
    end
  end
end
