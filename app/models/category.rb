class Category < ActiveRecord::Base
    belongs_to :product_line
    has_many :products, dependent: :destroy, foreign_key: :id
end
