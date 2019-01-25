class Product < ActiveRecord::Base
    belongs_to :category
    has_attached_file :logo,
        styles: { large: '500x500' ,medium: "100x100", thumb: "150x150" }, default_url: "/images/missing.png"
    validates_attachment_content_type :logo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

    has_attached_file :product_image, validate_media_type: false
    validates_attachment_content_type :product_image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
