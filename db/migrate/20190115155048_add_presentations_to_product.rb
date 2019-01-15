class AddPresentationsToProduct < ActiveRecord::Migration
  def change
    add_column :products, :presentations, :string, array: true, defualt: []
  end
end
