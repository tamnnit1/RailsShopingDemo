class Product < ApplicationRecord
  belongs_to :category

  default_scope { where(active: true) }
end
