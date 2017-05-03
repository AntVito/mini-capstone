class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :title
      t.string :info
      t.string :price
      t.string :seller

      t.timestamps
    end
  end
end
