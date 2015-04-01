require 'rails_helper'

describe "the homepage" do
  it "goes to the home page" do
    visit "/"
    expect(page).to have_content 'Rhyme Tyme'
  end
end
