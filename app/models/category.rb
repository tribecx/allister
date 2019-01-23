class Category < ActiveRecord::Base
    belongs_to :product_line
    has_many :products, dependent: :destroy
    accepts_nested_attributes_for :product_line
end
