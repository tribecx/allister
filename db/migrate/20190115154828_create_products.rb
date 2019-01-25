class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :link_pdf
      t.belongs_to :category, index: true

      t.timestamps null: false
    end

  end
end
