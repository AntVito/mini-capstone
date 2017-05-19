class RemovePicFromProducts < ActiveRecord::Migration[5.0]

  def change
    remove_column :products, :pic, :string
  end

end
