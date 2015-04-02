require 'rails_helper'

describe "the add a contact experience" do
    let(:user) { FactoryGirl.create(:user) }

    before do
      sign_in(user)
    end

  it "will show all contacts for the user" do

    contact = FactoryGirl.create(:contact)
    user.contacts << contact
    visit user_contacts_path(user)
    expect(page).to have_content (contact.name)
  end

end
