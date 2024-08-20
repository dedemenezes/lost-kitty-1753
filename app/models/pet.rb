class Pet < ApplicationRecord
  SPECIES = [ 'dog', 'cat', 'turtle', 'bird', 'hamster' ]

  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES }
end
