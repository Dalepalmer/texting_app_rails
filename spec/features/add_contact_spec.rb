require 'rails_helper'

describe "the add a contact experience" do
    let(:user) { FactoryGirl.create(:user) }

    before do
      sign_in(user)
    end

  it "adds a contact to a user account" do


    click_on "Add Contact"
    fill_in "Name", with: "Friend"
    fill_in "Number", with: "1112223333"
    click_on "Create Contact"
    expect(page).to have_content "Successfully"
  end
end
