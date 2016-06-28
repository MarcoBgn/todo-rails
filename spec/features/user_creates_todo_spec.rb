require "rails_helper"

feature "User creates Todo" do
  scenario "successfully" do
    sign_in

    add_a_new_todo "Buy milk"

    expect(page).to have_css '.todos li', text: "Buy milk"
  end
end
