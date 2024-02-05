require 'rails_helper'

RSpec.describe "books/edit", type: :view do
  let(:book) {
    Book.create!(
      name: "MyString",
      category: "MyString",
      price: "9.99",
      isbn: 1
    )
  }

  before(:each) do
    assign(:book, book)
  end

  it "renders the edit book form" do
    render

    assert_select "form[action=?][method=?]", book_path(book), "post" do

      assert_select "input[name=?]", "book[name]"

      assert_select "input[name=?]", "book[category]"

      assert_select "input[name=?]", "book[price]"

      assert_select "input[name=?]", "book[isbn]"
    end
  end
end
