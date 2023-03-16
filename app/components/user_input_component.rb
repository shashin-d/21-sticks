# frozen_string_literal: true

class UserInputComponent < ViewComponent::Base
  def initialize(sticks_taken:)
    @sticks_taken = sticks_taken
  end

end
