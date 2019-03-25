class Category < ApplicationRecord
    has_many :product

    default_scope { where(active: true) }
end
