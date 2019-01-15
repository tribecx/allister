class ProductLine < ActiveRecord::Base
    belongs_to :admin
    has_many :category, dependent: :destroy
end
