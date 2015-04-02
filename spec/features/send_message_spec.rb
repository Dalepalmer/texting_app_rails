require 'rails_helper'

describe "the add a contact experience" do
    let(:user) { FactoryGirl.create(:user) }
    let(:contact) { FactoryGirl.create(:contact) }

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

  it "sends a message from the contact database" do
    click_on "Add Contact"
    fill_in "Name", with: "Friend"
    fill_in "Number", with: "1112223333"
    click_on "Create Contact"
    click_on "Craft a text"
    fill_in "Body", with: "Sweet message bro"
    # save_and_open_page
    choose "Friend"
    click_on "Create Message"
    expect(page).to have_content "Message sent"
  end
end
