class AddDescriptionToProduct < ActiveRecord::Migration[7.2]
  def change
    add_column :products, :description, :string
  end
end
