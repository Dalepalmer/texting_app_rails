require "rails_helper"

describe "the add a user process" do
  it "adds a new user" do
    visit new_user_registration_path
    user = FactoryGirl.build(:user)
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    fill_in "Password confirmation", with: user.password_confirmation
    click_on "Sign up"
    expect(page).to have_content 'Welcome!'
  end
end
