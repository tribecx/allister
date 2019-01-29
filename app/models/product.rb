class Product < ActiveRecord::Base
    belongs_to :category
    has_attached_file :logo, default_url: "/images/missing.svg"
    validates_attachment_content_type :logo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

    has_attached_file :product_image, default_url: "/images/missing.svg"
    validates_attachment_content_type :product_image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
