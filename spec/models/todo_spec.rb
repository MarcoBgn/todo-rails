require 'rails_helper'

RSpec.describe Todo, type: :model do
  it "Has a field email" do
    todo = Todo.create(title: "Buy Milk")
    expect(todo.email).to be nil
  end

  context "#completed" do
    it "Return true if completed_at is true" do
      todo = Todo.new(completed_at: Time.current)

      expect(todo).to be_completed
    end
    it "Return false is completed _at is false" do
      todo = Todo.new(completed_at: nil)

      expect(todo).not_to be_completed
    end
  end
end
