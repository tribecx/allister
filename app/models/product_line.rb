class ProductLine < ActiveRecord::Base
    belongs_to :admin
    has_many :categories, dependent: :destroy, foreign_key: :id 
end
