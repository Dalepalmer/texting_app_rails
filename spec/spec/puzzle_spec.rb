require 'rails_helper'

describe Puzzle do

  it { should validate_presence_of :clue }
  it { should validate_presence_of :answer }

end
