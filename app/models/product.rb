class Product < ActiveRecord::Base
    belongs_to :category
    has_attached_file :logo,
        styles: { large: '500x500' ,medium: "100x100>", thumb: "150x150>" }, default_url: "/images/missing.png"
    validates_attachment :logo,
    content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] },
    size: { in: 0..5.megabytes }

    has_attached_file :product_image
    validates_attachment :product_image,
    content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] },
    size: { in: 0..5.megabytes }
end
