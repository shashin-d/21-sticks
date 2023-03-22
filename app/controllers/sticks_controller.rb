class SticksController < ApplicationController

  def index
    puts "in index"
    puts params
    puts :new_sticks_round
    puts @new_sticks_round
  end

  def new_game
    @new_sticks_round = SticksRound.new
    @new_sticks_round.computer_input = 1
    @new_sticks_round.ending_sticks_count = 20
    @new_sticks_round.starting_sticks_count = 21
    puts "new game"
    render 'sticks/index'
  end

  def userinput
    puts "in userinput of sticks"
    puts params
    @current_sticks_round = SticksRound.new
    @current_sticks_round.ending_sticks_count = params[:sticks_round][:ending_sticks_count].to_i
    @current_sticks_round.starting_sticks_count = params[:sticks_round][:starting_sticks_count].to_i
    @current_sticks_round.computer_input = params[:sticks_round][:computer_input].to_i
    @current_sticks_round.user_input = params[:user_input].to_i

    if @current_sticks_round.valid?
      sticks_remaining = @current_sticks_round.starting_sticks_count.to_i - @current_sticks_round.user_input.to_i - @current_sticks_round.computer_input.to_i
      @new_sticks_round = SticksRound.new
      @new_sticks_round.computer_input = calculate_computer_input(sticks_remaining)
      puts @new_sticks_round.computer_input
      @new_sticks_round.starting_sticks_count = sticks_remaining
    else
      puts @current_sticks_round.valid?
      puts @current_sticks_round.errors
      @new_sticks_round = SticksRound.new
      @new_sticks_round.computer_input = @current_sticks_round.computer_input
      @new_sticks_round.user_input = ''
      # @new_sticks_round.errors = @current_sticks_round.errors
      @new_sticks_round.starting_sticks_count = @current_sticks_round.starting_sticks_count
    end

    render :template => 'sticks/index'
  end

  def calculate_computer_input(sticks_remaining)
    sticks_remaining % 4
  end

end
