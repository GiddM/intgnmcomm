class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :address
      t.string :profession
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end
end
