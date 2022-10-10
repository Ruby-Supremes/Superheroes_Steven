class HeroPower < ApplicationRecord
  belongs_to :hero
  belongs_to :power

  strength = ["Strong", "Weak", "Average"]
  validates :strength, inclusion: { in: strength }

end
