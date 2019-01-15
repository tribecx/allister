class Admin < ActiveRecord::Base
  devise :database_authenticatable, :trackable, :timeoutable, :lockable 
  has_many :product_lines, foreign_key: :id
end