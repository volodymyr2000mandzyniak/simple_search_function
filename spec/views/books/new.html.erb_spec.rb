require 'rails_helper'

RSpec.describe "books/new", type: :view do
  before(:each) do
    assign(:book, Book.new(
      name: "MyString",
      category: "MyString",
      price: "9.99",
      isbn: 1
    ))
  end

  it "renders new book form" do
    render

    assert_select "form[action=?][method=?]", books_path, "post" do

      assert_select "input[name=?]", "book[name]"

      assert_select "input[name=?]", "book[category]"

      assert_select "input[name=?]", "book[price]"

      assert_select "input[name=?]", "book[isbn]"
    end
  end
end
