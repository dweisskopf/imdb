class Movie < ApplicationRecord
  # Direct associations

  has_many   :bookmarks,
             :dependent => :destroy

  has_many   :roles

  # Indirect associations

  # Validations

end
