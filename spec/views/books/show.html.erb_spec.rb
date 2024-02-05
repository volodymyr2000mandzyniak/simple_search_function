require 'rails_helper'

RSpec.describe "books/show", type: :view do
  before(:each) do
    assign(:book, Book.create!(
      name: "Name",
      category: "Category",
      price: "9.99",
      isbn: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Category/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/2/)
  end
end
