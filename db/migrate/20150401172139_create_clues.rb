class CreateClues < ActiveRecord::Migration
  def change
    create_table :puzzles do |t|
      t.string :clue
      t.string :answer
    end
  end
end
