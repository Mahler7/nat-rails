require "rails_helper"

RSpec.feature "Users sign in" do
  
  before do
    @user = User.create!(email: "user@example.com", password: "password")
  end

  scenario "with valid credentials" do
    visit "/"
    click_link "Sign In"
    fill_in "Email", with: @user.email
    fill_in "Password", with: @user.password
    click_button "Log In"
    expect(page).to have_current_path(voting_path)
    expect(page).to have_content("Signed in successfully")
    expect(page).to have_content("Signed in as #{@user.email}")
    expect(page).not_to have_link("Sign In")
    expect(page).not_to have_link("Sign Up")
  end

  scenario "with invalid credentials" do
    visit "/"
    click_link "Sign In"
    fill_in "Email", with: ""
    fill_in "Password", with: ""
    click_button "Log In"
    expect(page).to have_current_path(login_path)
    expect(page).to have_content("Invalid email or password")
    expect(page).to have_link("Sign In")
    expect(page).to have_link("Sign Up")
  end

end