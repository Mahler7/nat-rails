require "rails_helper"

RSpec.feature "Users sign out" do
  
  before do
    @user = User.create!(email: "user@example.com", password: "password")
    visit "/"
    click_link "Sign In"
    fill_in "Email", with: @user.email
    fill_in "Password", with: @user.password
    click_button "Log In"
  end

  scenario "Sign out user" do
    visit "/"
    click_link "Sign Out"
    expect(page).to have_content("Signed out successfully")
    expect(page).not_to have_content("Sign Out")
  end

end