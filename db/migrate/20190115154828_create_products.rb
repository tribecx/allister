class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.attachment :logo
      t.attachment :product_image
      t.string :name
      t.string :description
      t.string :link_pdf

      t.timestamps null: false
    end
  end
end
