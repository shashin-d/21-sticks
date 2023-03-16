class SticksController < ApplicationController

  def index
    puts "in index"
    puts params
    puts :sticks_round
    puts @sticks_round
  end

  def new_game
    @sticks_round = SticksRound.new
    @sticks_round.computer_input = 1
    @sticks_round.ending_sticks_count = 20
    puts "new game"
    render 'sticks/index'
  end

  def userinput
    puts "in userinput of sticks"
    number_of_sticks = params[:sticks_round][:ending_sticks_count].to_i
    user_input = params[:user_input].to_i
    sticks_remaining = number_of_sticks - user_input
    @sticks_round = SticksRound.new
    @sticks_round.computer_input = calculate_computer_input(sticks_remaining)
    puts @sticks_round.computer_input
    @sticks_round.ending_sticks_count = sticks_remaining - @sticks_round.computer_input.to_i
    # redirect_to controller: 'sticks', action: 'index', sticks_round: @sticks_round
    redirect_to sticks_index_url, :sticks_round => @sticks_round, var1: 'rr'
  end

  def calculate_computer_input(sticks_remaining)
    sticks_remaining % 4
  end

end
