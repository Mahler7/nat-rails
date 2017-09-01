require "rails_helper"

RSpec.feature "Sign Up Users" do
  
  scenario "sign up a valid user" do
    visit "/"
    click_link "Sign Up"
    fill_in "Email", with: "user@example.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button "Sign Up"
    expect(page).to have_current_path(voting_path)
    expect(page).to have_content("You have signed up successfully")
  end

  scenario "sign up an invalid user" do
    visit "/"
    click_link "Sign Up"
    fill_in "Email", with: ""
    fill_in "Password", with: ""
    fill_in "Password confirmation", with: ""
    click_button "Sign Up"
    expect(page).to have_current_path(users_path)
    expect(page).to have_content("You have not signed up successfully")
  end

end