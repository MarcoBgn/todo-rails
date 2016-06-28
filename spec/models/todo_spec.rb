require 'rails_helper'

RSpec.describe Todo, type: :model do
  it "Has a field email" do
    todo = Todo.create(title: "Buy Milk")
    expect(todo.email).to be nil
  end
end
