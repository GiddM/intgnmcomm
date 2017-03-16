class CreateMoneyposts < ActiveRecord::Migration[5.0]
  def change
    create_table :moneyposts do |t|
      t.string :address
      t.string :type
      t.float :price
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end
end
