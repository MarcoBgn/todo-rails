require "rails_helper"

feature "User sees own todos" do
  scenario "doesn't see others todos" do
    Todo.create!(title: "Buy Eggs", email: "test@me.com")

    sign_in_as "user2@me.com"

    expect(page).not_to have_css ".todos li", text: "Buy Eggs"
  end
end
