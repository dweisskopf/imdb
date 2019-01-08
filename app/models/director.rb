class Director < ApplicationRecord
  # Direct associations

  has_many   :movies,
             :dependent => :nullify

  # Indirect associations

  # Validations

end
