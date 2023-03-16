class SticksRound < ApplicationRecord
  validates :user_input, length: { minimum: 1, maximum: 3 }
  validates :computer_input, length: { minimum: 1, maximum: 3 }
  validates :starting_sticks_count, length: { minimum: 1, maximum: 21 }
  validates :ending_sticks_count, length: { minimum: 0, maximum: 21 }
end
