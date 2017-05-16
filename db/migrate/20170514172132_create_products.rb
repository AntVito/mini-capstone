class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :title
      t.string :info
      t.float :price
      t.string :seller
      t.string :pic

      t.timestamps
    end
  end
end
