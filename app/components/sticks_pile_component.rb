# frozen_string_literal: true

class SticksPileComponent < ViewComponent::Base
  def initialize(taken_by_player:, taken_by_computer:, sticks_remaining:)
    @taken_by_player = taken_by_player
    @taken_by_computer = taken_by_computer
    @sticks_remaining = sticks_remaining
  end

end
