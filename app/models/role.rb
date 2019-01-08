class Role < ApplicationRecord
  # Direct associations

  belongs_to :actor,
             :counter_cache => true

  belongs_to :movie,
             :counter_cache => true

  # Indirect associations

  # Validations

end
