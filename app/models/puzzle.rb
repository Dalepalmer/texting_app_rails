class Puzzle < ActiveRecord::Base
  validates :clue, presence: true
  validates :answer, presence: true
end
