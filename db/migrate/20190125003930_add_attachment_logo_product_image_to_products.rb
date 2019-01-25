class AddAttachmentLogoProductImageToProducts < ActiveRecord::Migration
  def self.up
    change_table :products do |t|
      t.attachment :logo
      t.attachment :product_image
    end
  end

  def self.down
    remove_attachment :products, :logo
    remove_attachment :products, :product_image
  end
end
