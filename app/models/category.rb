class Category < ApplicationRecord
    default_scope { where(active: true) }
end
