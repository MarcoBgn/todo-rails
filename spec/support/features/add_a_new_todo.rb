module Features
  def add_a_new_todo(todo)
    click_on "Add a new Todo"
    fill_in "Title", with: todo
    click_on "Create"
  end
end
