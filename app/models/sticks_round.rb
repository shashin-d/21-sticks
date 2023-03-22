class SticksRound < ApplicationRecord
  validates :user_input, numericality: { only_integer: true, in: 1..3 }
  :computer_input
  :starting_sticks_count
  :ending_sticks_count

end
