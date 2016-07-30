require 'rails_helper'

feature "User registers" do

  scenario "check route" do
    visit "/"
    click_link "Sign Up"
    expect(current_path).to eq(new_user_registration_path)
  end

  scenario "with invalid email" do
    visit "/"
    click_link "Sign Up"
    expect(current_path).to eq(new_user_registration_path)
    fill_in "user_name", with: "Poper Dumper"
    fill_in "user_email", with: "poperdumper.com"
    fill_in "user_password", with: "poperdumper123"
    fill_in "user_password_confirmation", with: "poperdumper123"
    page.attach_file "user_avatar", Rails.root + "spec/fixtures/sosok.png"
    click_button "Sign up"
    expect(current_path).to eq(user_registration_path)
  end

  scenario "with valid data" do
    visit "/"
    click_link "Sign Up"
    expect(current_path).to eq(new_user_registration_path)
    fill_in "user_name", with: "Poper Dumpera"
    fill_in "user_email", with: "poper@dumpera.com"
    fill_in "user_password", with: "poperdumpera123"
    fill_in "user_password_confirmation", with: "poperdumpera123"
    page.attach_file "user_avatar", Rails.root + "spec/fixtures/sosok.png"
    click_button "Sign up"
    find('#flash_notice').should have_content("A message with a confirmation link has been sent to your email address. Please follow the link to activate your account.")
  end

end
