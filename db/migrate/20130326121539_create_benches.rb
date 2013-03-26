class CreateBenches < ActiveRecord::Migration
  def change
    create_table :benches do |t|
      t.integer :location_id
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
