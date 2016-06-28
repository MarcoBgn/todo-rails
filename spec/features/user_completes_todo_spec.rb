require "rails_helper"

feature "A user completes a todo" do
  scenario "successfully" do
    sign_in
    add_a_new_todo "Buy milk"

    check "Check_todo"
    click_on "Mark Completed"

    expect(page).to have_css '.todos li.completed', text: "Buy milk"
  end
end
