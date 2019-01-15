class Category < ActiveRecord::Base
    belongs_to :product_line
    has_many :products, dependent: :destroy
end
