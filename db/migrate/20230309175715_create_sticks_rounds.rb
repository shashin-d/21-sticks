class CreateSticksRounds < ActiveRecord::Migration[7.0]
  def change
    create_table :sticks_rounds do |t|
      t.string :user_input
      t.string :computer_input
      t.string :starting_sticks_count
      t.string :ending_sticks_count

      t.timestamps
    end
  end
end
